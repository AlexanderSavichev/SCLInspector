using SclInspector.Analysis;
using SclInspector.Models;
using SclInspector.Online;
using SclInspector.Parsing;

namespace SclInspector.Tests;

public class SclReaderTests
{
    [Fact]
    public void TestReaderUsesUnknown()
    {
        var xml = """
                  <SCL xmlns="http://www.iec.ch/61850/2003/SCL">
                      <IED name="IED1" />
                  </SCL>
                  """;
        var reader = new SclReader();
        var result = reader.ReadIeds(xml);
        var device = Assert.Single(result);
        Assert.Equal("Unknown", device.Manufacturer);
        Assert.Equal("IED1", device.Name);
    }

    [Theory]
    [InlineData("")]
    [InlineData(" ")]
    [InlineData("  ")]
    public void TestReaderThrowsExceptionEmptyName(string name)
    {
        var xml = $"""
                   <SCL xmlns="http://www.iec.ch/61850/2003/SCL">
                       <IED name="{name}" />
                   </SCL>
                   """;
        Assert.Throws<InvalidDataException>(() =>
            new SclReader().ReadIeds(xml));
    }

    [Fact]
    public void TestAllDefaultIedFalse()
    {
        var xml = """
                  <SCL xmlns="http://www.iec.ch/61850/2003/SCL">
                  <IED name="IED1"
                       manufacturer="Siemens"
                       desc="Feeder protection" />
                  <IED name="IED2"
                       manufacturer="ABB"
                       desc="Feeder protection" />
                  </SCL>
                  """;
        var results = new SclReader().ReadIeds(xml);

        Assert.NotEmpty(results);
        foreach (var result in results)
        {
            Assert.False(result.IsEnabled);
        }

        Assert.Equal("IED1", results[0].Name);
        Assert.Equal("IED2", results[1].Name);
        Assert.Equal("Siemens", results[0].Manufacturer);
        Assert.Equal("ABB", results[1].Manufacturer);
        Assert.Equal("Feeder protection", results[0].Description);
        Assert.Equal("Feeder protection", results[1].Description);
        
}

    [Fact]
    public void TestSclProtectionSettings()
    {
        var sclReader = new SclReader();
        var path = Path.Combine(AppContext.BaseDirectory, "Samples", "project_307.scd");
        var xml = File.ReadAllText(path);
        var resultList = sclReader.ReadProtectionSettings(xml, "IED_T1");
        Assert.Equal(2, resultList.Count);
        Assert.Equal("IED_T1PROT/PTOC1", resultList[0].LogicalNodeReference);
        Assert.Equal(955, resultList[0].PickupSetting);
        Assert.Equal(1500,  resultList[0].OperateDelayMs);
        Assert.Equal("IED_T1PROT/PTOC2", resultList[1].LogicalNodeReference);
        Assert.Equal(1671, resultList[1].PickupSetting);
        Assert.Equal(1000,  resultList[1].OperateDelayMs);
    }
    
    [Theory]
    [InlineData(null, "1000")]
    [InlineData("abc", "1000")]
    [InlineData("-1", "1000")]
    [InlineData("NaN", "1000")]
    [InlineData("955", "-1")]
    public void TestInvalidProtectionSettings(string? pickup, string delay)
    {
        var pickupVal = pickup is null ? "" : $"<Val>{pickup}</Val>";

        var xml = $$"""
                    <SCL xmlns="http://www.iec.ch/61850/2003/SCL">
                        <IED name="IED1">
                            <AccessPoint name="AP1">
                                <Server>
                                    <LDevice inst="PROT">
                                        <LN lnClass="PTOC" inst="1">
                                            <DOI name="StrVal">
                                                <SDI name="setMag">
                                                    <DAI name="f">
                                                        {{pickupVal}}
                                                    </DAI>
                                                </SDI>
                                            </DOI>
                                            <DOI name="OpDlTmms">
                                                <DAI name="setVal">
                                                    <Val>{{delay}}</Val>
                                                </DAI>
                                            </DOI>
                                        </LN>
                                    </LDevice>
                                </Server>
                            </AccessPoint>
                        </IED>
                    </SCL>
                    """;

        var reader = new SclReader();

        Assert.Throws<InvalidDataException>(() =>
            reader.ReadProtectionSettings(xml, "IED1"));
    }

    [Fact]
    public void TestIgnoreHeader()
    {
        var xml = """
                  <SCL xmlns="http://www.iec.ch/61850/2003/SCL">
                  <Header id="test-project" />
                      <IED name="IED1" />
                  </SCL>
                  """;
        var reader = new SclReader();
        var result = reader.ReadIeds(xml);
        
        Assert.Single(result);
    }

    [Fact]
    public void TestWrongNamespace()
    {
        var xml = """
                  <SCL xmlns="http://ww.ch/61850/2003/SCL">
                      <IED name="IED1" />
                  </SCL>
                  """;
        var reader = new SclReader();
        Assert.Throws<InvalidDataException>(() =>  reader.ReadIeds(xml));
    }

    [Fact]
    public void TestInvalidName()
    {
        var xml = """
                  <SCL xmlns="http://www.iec.ch/61850/2003/SCL">
                      <IED manufacturer="ABB" />
                  </SCL>
                  """;
        var reader = new SclReader();
        Assert.Throws<InvalidDataException>(() =>  reader.ReadIeds(xml));
    }

    [Fact]
    public void TestCorrectSclName()
    {
        var xml = """
                  <Devices xmlns="http://www.iec.ch/61850/2003/SCL">
                      <IED name="IED1" />
                  </Devices>
                  """;
        var reader = new SclReader();
        Assert.Throws<InvalidDataException>(() =>  reader.ReadIeds(xml));
    }

    [Fact]
    public void TestAnalyseFromFile()
    {
        var devices = new List<Ied>();
        var sclReader = new SclReader();
        var analyser = new IedAnalyzer();
        var path = Path.Combine(AppContext.BaseDirectory, "Samples", "sample.scd");
        var xml = File.ReadAllText(path);
        
        devices.AddRange(sclReader.ReadIeds(xml));
        var resultAnalyserList = analyser.SummarizeByManufacturer(devices);
        Assert.NotEmpty(resultAnalyserList);
        Assert.Single(resultAnalyserList);
        Assert.Equal("ABB", resultAnalyserList[0].Manufacturer);
        Assert.Contains(resultAnalyserList, result => result.Enabled == 0);
        
    }

    [Fact]
    public void TestReadingLogicalNodes()
    {
        var nodes = new List<LogicalNodeInfo>();
        var sclReader = new SclReader();
        var path = Path.Combine(AppContext.BaseDirectory, "Samples", "sample.scd");
        var xml = File.ReadAllText(path);
        nodes.AddRange(sclReader.ReadLogicalNodes(xml));
        Assert.DoesNotContain(nodes, node => node.IedName != "IED1");
        Assert.DoesNotContain(nodes, node => node.AccessPointName != "AP1");
        Assert.Contains(nodes, node => node.LDeviceInst == "PROT");
        Assert.Contains(nodes, node => node.LDeviceInst == "CTRL");
        Assert.Contains(nodes, node => node.Name == "LLN0");
        Assert.Contains(nodes, node => node.Name == "PTOC1");
        Assert.Contains(nodes, node => node.Name == "PhPTOC2");
        Assert.Contains(nodes, node => node.Name == "XCBR1");
    }

    [Theory]
    [InlineData("10000000000000")]
    [InlineData("65536")]
    [InlineData("0")]
    [InlineData("-1")]
    [InlineData("abc")]
    [InlineData("")]
    public void TestReadingIncorrectPort(string portName)
    {
        var result = PortParser.TryReadPort(portName, out var port);
        Assert.False(result);
        Assert.Equal(0, port);
    }
}