using System.Collections.Immutable;
using SclInspector.Analysis;
using SclInspector.Models;

namespace SclInspector.Tests;

public class ProtectionSettingsAnalyzerTests
{
    [Fact]
    public void TestComparisonMatches()
    {
        var scl = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 955f, 1500) };
        var ied = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 955f, 1500) };
        
        var result = new ProtectionSettingsAnalyzer().Compare(scl, ied, tolerance: 0.01);
        
        Assert.Equal(2, result.Count);
        Assert.All(result, row => Assert.Equal(SettingStatus.Match, row.Status));
    }

    [Fact]
    public void TestComparisonMisMatches()
    {
        var scl = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 1000f, 1500) };
        var ied = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 955f, 1500) };
        
        var result = new ProtectionSettingsAnalyzer().Compare(scl, ied, tolerance: 0.01);
        
        Assert.Equal(2, result.Count);
        Assert.True(result.Exists(setting => setting.Status == SettingStatus.Mismatch));
        Assert.True(result.Find(setting => setting.Parameter == "OpDlTmms")?.Status == SettingStatus.Match);
        Assert.True(result.Find(setting => setting.Parameter == "StrVal")?.Status == SettingStatus.Mismatch);
    }

    [Fact]
    public void TestCompareWithEmptyTerminal()
    {
        var scl = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 1000f, 1500) };
        var ied = new List<ProtectionSettings>{};
        
        var result = new ProtectionSettingsAnalyzer().Compare(scl, ied, tolerance: 0.01);
        
        Assert.True(result.Count == 2);
        Assert.True(result.FindAll(setting => setting.IedValue == null).TrueForAll(setting => setting.Status == SettingStatus.MissingInIed));
        Assert.All(result, row => Assert.Null(row.IedValue));
    }
    
    [Fact]
    public void TestCompareWithEmptyScl()
    {
        var ied = new List<ProtectionSettings> { new("IED_T1PROT/PTOC3", 1000f, 1500) };
        var scl = new List<ProtectionSettings>{};
        
        var result = new ProtectionSettingsAnalyzer().Compare(scl, ied, tolerance: 0.01);
        
        Assert.True(result != null);
        Assert.True(result.Count == 2);
        Assert.True(result.FindAll(setting => setting.SclValue == null).TrueForAll(setting => setting.Status == SettingStatus.MissingInScl));
        Assert.All(result, row => Assert.Null(row.SclValue));
    }
    
    [Fact]
    public void TestComparisonMatchesWithTolerance()
    {
        var scl = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 955.004f, 1500) };
        var ied = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 955f, 1500) };
        
        var result = new ProtectionSettingsAnalyzer().Compare(scl, ied, tolerance: 0.01);
        
        Assert.Equal(2, result.Count);
        Assert.All(result, row => Assert.Equal(SettingStatus.Match, row.Status));
    }

    [Fact]
    public void TestStepSizeBeatsTolerance()
    {
        var scl = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 955.4f, 1500, null, null, null, 1) };
        var ied = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 955f, 1500, null, null, null, 1) };
        
        var result = new ProtectionSettingsAnalyzer().Compare(scl, ied, tolerance: 0.01);
        
        Assert.Equal(2, result.Count);
        Assert.True(result.Find(setting => setting.Parameter == "StrVal")?.Status == SettingStatus.Match);
    }
    
    [Fact]
    public void TestStepSizeDividedByTwo()
    {
        var scl = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 955.6f, 1500, null, null, null, 1) };
        var ied = new List<ProtectionSettings> { new("IED_T1PROT/PTOC1", 955f, 1500, null, null, null, 1) };
        
        var result = new ProtectionSettingsAnalyzer().Compare(scl, ied, tolerance: 0.01);
        
        Assert.Equal(2, result.Count);
        Assert.True(result.Find(setting => setting.Parameter == "StrVal")?.Status == SettingStatus.Mismatch);
    }
}