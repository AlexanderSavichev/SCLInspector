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

            double stepSize = (ied?.StepSize, scl?.StepSize) switch
            {
                ({} iedStep and > 0, _) => iedStep/2,
                (_, {} sclStep and > 0) => sclStep / 2,
                _ => tolerance
            };
            
            resultList.Add(CompareOneParameter(reference, "StrVal", scl?.PickupSetting, ied?.PickupSetting, scl?.Units, ied?.Units, stepSize));
            resultList.Add(CompareOneParameter(reference, "OpDlTmms", scl?.OperateDelayMs, ied?.OperateDelayMs, "ms", "ms", tolerance));
        }

        return resultList;
    }

    private static SettingComparison CompareOneParameter(string logicalNodeReference, string parameter,
        double? scl, double? ied, string? sclUnit, string? iedUnit,  double tolerance)
    {
        var status = (scl, ied) switch
        {
            (null, null) => throw new InvalidDataException(
                $"{parameter} parameters in scl document and server in {logicalNodeReference} are null"),
            (_, null) => SettingStatus.MissingInIed,
            (null, _) => SettingStatus.MissingInScl,
            _ when sclUnit != null && iedUnit != null && sclUnit != iedUnit => SettingStatus.UnitMismatch,
            var (sclValue, iedValue) when Math.Abs(sclValue.Value - iedValue.Value) <= tolerance =>
                SettingStatus.Match,
            _ => SettingStatus.Mismatch
        };
        var strValUnit = iedUnit ?? sclUnit ?? "Unknown";
        if (status == SettingStatus.UnitMismatch)
        {
            strValUnit = $"{iedUnit}/{sclUnit}";
        }
        return new SettingComparison(logicalNodeReference, parameter, scl, ied, strValUnit, status);
    }
}