namespace SclInspector.Models;

public readonly record struct LogicalNodeInfo(
    string IedName,
    string AccessPointName,
    string LDeviceInst,
    string Prefix,
    string LnClass,
    string Inst)

{
    public string Name => $"{Prefix}{LnClass}{Inst}";
}