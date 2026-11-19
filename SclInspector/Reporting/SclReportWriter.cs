using SclInspector.Models;

namespace SclInspector.Reporting;

public class SclReportWriter
{
    public void Write(string path, IEnumerable<LogicalNodeInfo> nodes)
    {
        using (var writer = new StreamWriter(path))
        {
            writer.WriteLine("IED;AccessPoint;LDevice;LogicalNode");
            foreach (var node in nodes)
            {
                writer.WriteLine(node.IedName +";" + node.AccessPointName + ";" + node.LDeviceInst + ";" + node.LogicalNode.Name);
            }
        }
    }

    public void Write(string path, IEnumerable<OnlineDataObject> nodes)
    {
        using (var writer = new StreamWriter(path))
        {
            writer.WriteLine("Logical Device Name;Logical Node Name;DataObject Name");
            foreach (var node in nodes)
            {
                writer.WriteLine(node.LogicalDeviceName +";" + node.LogicalNodeName + ";" + node.DataObjectName + ";");
            }
        }
    }
}