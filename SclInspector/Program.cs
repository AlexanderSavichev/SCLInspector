using SclInspector.Models;
using SclInspector.Reporting;
using IEC61850.Client;
using IEC61850.Common;
using SclInspector.Analysis;
using SclInspector.Online;
using SclInspector.Parsing;

if (args.Length < 2)
{
    PrintUsage();
    return 1;
}

var reportWriter = new SclReportWriter();
var modelBrowser = new IedModelBrowser();
var nodes = new List<OnlineDataObject>();
var pathReport = "logical-nodes-report.txt";

var sclReader = new SclReader();
var groupParser = new GroupParser();
var settingsAnalyzer = new ProtectionSettingsAnalyzer();
var sclPath = args[0];
var iedName = args[1];

if (!File.Exists(sclPath))
{
    Console.WriteLine($"SCL file is not found at  {Path.GetFullPath(sclPath)}");
    return 1;
}

string host = args.ElementAtOrDefault(2) ?? "127.0.0.1";
string portText = args.ElementAtOrDefault(3) ?? "102";
var xml = File.ReadAllText(sclPath);

if (!PortParser.TryReadPort(portText, out var port))
{
    Console.WriteLine($"Port is not a valid port number: {portText} Need a number from 1 to 65535");
    return 1;
}

var logicalDeviceName = $"{iedName}PROT";

try
{
    using var connection = new IedConnection();

    connection.Connect(host, port);
    Console.WriteLine("Connected to the test IED");
    
    var groups = modelBrowser.CheckProtectionGroups(connection, logicalDeviceName);
    Console.WriteLine(groups);

    var logicalNodes = modelBrowser.ReadAllLogicalNodes(connection);
    var logicalNodesWithDo = modelBrowser.ReadAllDataObjects(connection);

    Console.WriteLine("Logical nodes of the server are:");
    Console.WriteLine($"{"Logical device",-20} {"Node", -10} {"Prefix", 10} {"Class", -10} {"Inst", 10} {"Group", -25}");
    foreach (var node in logicalNodes)
    {
        var lnNames = LogicalNodeName.Parse(node.LogicalNodeName);
        var groupName = groupParser.NodeGroupDefiner(lnNames.LnClass);
        Console.WriteLine($"{node.LogicalDeviceName,-20} " +
                          $"{node.LogicalNodeName, -10} {lnNames.Prefix, 10} {lnNames.LnClass, -10} " +
                          $"{lnNames.Inst, 10} {groupName, -25}");
    }

    for (int group = 1; group <= Math.Max(1, groups.NumberOfGroups); group++)
    {
        var protectionSetsFromScl = sclReader.ReadProtectionSettings(xml, iedName, group);
        foreach (var settings in protectionSetsFromScl)
        {
            Console.WriteLine($"SCL: {settings}");
        }
    
        var protectionSetsFromServer = modelBrowser.ReadProtectionSettingsFromIed(connection, logicalDeviceName, group);
        foreach (var settings in protectionSetsFromServer)
        {
            Console.WriteLine($"IED: {settings}");
        }

        var protectionComparassionList = settingsAnalyzer.Compare(protectionSetsFromScl, protectionSetsFromServer, 0.1);

        Console.WriteLine($"Group #{group}");
        Console.WriteLine($"{"LogicalNode Reference",-25} {"Parameter", -15} {"SclValue", 10} {"IedValue", 10} {"Unit", -30} {"Status", -15}");
        foreach (var settingComparison in protectionComparassionList)
        {
            var iedValue = settingComparison.IedValue?.ToString() ?? "-";
            var sclValue = settingComparison.SclValue?.ToString() ?? "-";
            Console.WriteLine($"{settingComparison.LogicalNodeReference,-25} " +
                              $"{settingComparison.Parameter, -15} {sclValue, 10} {iedValue, 10} " +
                              $"{settingComparison.Unit, -30} {settingComparison.Status, -15}");
        
        }
    }
    
    foreach (var node in logicalNodesWithDo)
    {
        nodes.Add(node);
    }
}
catch (IedConnectionException ex)
{
    Console.WriteLine($"IEC 61850 error: {ex.Message}");
    Console.WriteLine($"Code: {ex.GetErrorCode()}, Error: {ex.GetIedClientError()}");
    return 1;
}
catch (InvalidDataException ex)               
{
    Console.WriteLine($"Data error: {ex.Message}");
    return 1;
}

reportWriter.Write(pathReport, nodes);

return 0;


static void PrintUsage()
{
    Console.WriteLine("Usage: SclInspector <SCD file> <IED name> [address] [port]");
    Console.WriteLine("SCD — substation project (SCL)");
    Console.WriteLine("IED name — name in <IED name=\"...\">, f.e. IED_T1");
    Console.WriteLine("address — terminal IP, by default 127.0.0.1");
    Console.WriteLine("port — TCP-port MMS, by default 102");
}