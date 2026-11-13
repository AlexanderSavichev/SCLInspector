using SclInspector.Models;

namespace SclInspector.Analysis;

public class ProtectionSettingsAnalyzer
{
    public List<SettingComparison> Compare(IReadOnlyList<ProtectionSettings> fromScl, IReadOnlyList<ProtectionSettings> fromIed, double tolerance)
    {
        var resultList = new List<SettingComparison>();

        var sclByRef = fromScl.ToDictionary(setting => setting.LogicalNodeReference);
        var iedByRef = fromIed.ToDictionary(setting => setting.LogicalNodeReference);

        var allRefs = sclByRef.Keys.Union(iedByRef.Keys).Order();

        foreach (var reference in allRefs)
        {
            sclByRef.TryGetValue(reference, out var scl);
            iedByRef.TryGetValue(reference, out var ied);
            
            var strValUnit = ied?.Units ?? scl?.Units ?? "Unknown";
            var stepSize = ied?.StepSize/2 ?? scl?.StepSize/2 ?? tolerance;
            
            resultList.Add(CompareOneParameter(reference, "StrVal", scl?.PickupSetting, ied?.PickupSetting, strValUnit, stepSize));
            resultList.Add(CompareOneParameter(reference, "OpDlTmms", scl?.OperateDelayMs, ied?.OperateDelayMs, "ms", tolerance));
        }

        return resultList;
    }

    private static SettingComparison CompareOneParameter(string logicalNodeReference, string parameter,
        double? scl, double? ied, string unit,  double tolerance)
    {
        var status = (scl, ied) switch
        {
            (null, null) => throw new InvalidDataException(
                $"{parameter} parameters in scl document and server in {logicalNodeReference} are null"),
            (_, null) => SettingStatus.MissingInIed,
            (null, _) => SettingStatus.MissingInScl,
            var (sclValue, iedValue) when Math.Abs(sclValue.Value - iedValue.Value) <= tolerance =>
                SettingStatus.Match,
            _ => SettingStatus.Mismatch
        };
        return new SettingComparison(logicalNodeReference, parameter, scl, ied, unit, status);
    }
}