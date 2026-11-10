namespace SclInspector.Models;

public record ProtectionSettings(
    string LogicalNodeReference,
    float PickupSetting,
    long OperateDelayMs);