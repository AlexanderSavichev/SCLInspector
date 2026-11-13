namespace SclInspector.Models;

public record ProtectionSettings(
    string LogicalNodeReference,
    float PickupSetting,
    long OperateDelayMs,
    string? Units = null,
    float? MinVal = null,
    float? MaxVal = null, 
    float? StepSize = null
);