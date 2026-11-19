using SclInspector.Models;
using SclInspector.Parsing;

namespace SclInspector.Tests;

public class LogicalNodeInfoTests
{
    [Fact]
    public void TestParseIsSuccessful()
    {
        var logicalNodesList = new List<LogicalNodeName>();
        var sclReader = new SclReader();
        var path = Path.Combine(AppContext.BaseDirectory, "Samples", "sample.scd");
        var xml = File.ReadAllText(path);
        var logicalNodes = sclReader.ReadLogicalNodes(xml);
        Assert.NotNull(logicalNodes);
        foreach (var node in logicalNodes)
        {
            var lnNames = LogicalNodeName.Parse(node.LogicalNode.Name);
            logicalNodesList.Add(lnNames);
        }
        Assert.NotNull(logicalNodesList);
        Assert.Equal(5, logicalNodesList.Count);
        Assert.True(logicalNodes.Find(node => node.LogicalNode.LnClass == "LLN0").LogicalNode.Inst == "");
        Assert.True(logicalNodes.Find(node => node.LogicalNode.LnClass == "PTOC").LogicalNode.Inst == "1");
        Assert.True(logicalNodes.Find(node => node.LogicalNode.LnClass == "PTOC" && node.LogicalNode.Inst == "2").LogicalNode.Prefix == "Ph");
    }

    [Theory]
    [InlineData("1000")]
    [InlineData("AVVVVVV")]
    [InlineData("1PTOC")]
    [InlineData("-PTOC1")]
    [InlineData("abc")]
    [InlineData("")]
    public void TestParseIsInvalid(string logicalNodeName)
    {
        Assert.Throws<InvalidDataException>(() => LogicalNodeName.Parse(logicalNodeName));
    }

    [Theory]
    [InlineData("PTOC1")]
    [InlineData("ATCTR1")]
    [InlineData("LLN0")]
    public void TestParseIsValidWithDifferentNodes(string logicalNodeName)
    {
        var actual = LogicalNodeName.Parse(logicalNodeName);

        var expected = logicalNodeName switch
        {
            "PTOC1"  => new LogicalNodeName("", "PTOC", "1"),
            "ATCTR1" => new LogicalNodeName("A", "TCTR", "1"),
            "LLN0"   => new LogicalNodeName("", "LLN0", ""),
            _ => throw new ArgumentException("Unexpected test input")
        };

        Assert.Equal(expected, actual);
       
    }
}