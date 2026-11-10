namespace SclInspector.Models;

public record OnlineDataObject(
    string LogicalDeviceName,
    string LogicalNodeName,
    string DataObjectName)
{
    public string Reference => $"{LogicalDeviceName}/{LogicalNodeName}.{DataObjectName}";
}

public record OnlineLogicalNode(
    string LogicalDeviceName,
    string LogicalNodeName)
{
    public string Reference => $"{LogicalDeviceName}/{LogicalNodeName}";
}