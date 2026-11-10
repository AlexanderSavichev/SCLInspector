using SclInspector.Models;
using SclInspector.Reporting;
using IEC61850.Client;
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

    var logicalNodes = modelBrowser.ReadAllDataObjects(connection);
    var protectionSetsFromSCL = sclReader.ReadProtectionSettings(xml, iedName);
    foreach (var settings in protectionSetsFromSCL)
    {
        Console.WriteLine($"SCL: {settings}");
    }

    var protectionSetsFromServer = modelBrowser.ReadProtectionSettingsFromIed(connection, logicalDeviceName);
    foreach (var settings in protectionSetsFromServer)
    {
        Console.WriteLine($"IED: {settings}");
    }

    settingsAnalyzer.PtocAnalyzer(protectionSetsFromSCL, protectionSetsFromServer);

    Console.WriteLine("Online logical objects:");
    foreach (var node in logicalNodes)
    {
        Console.WriteLine($"{node.Reference}");
        nodes.Add(node);
        if (node.DataObjectName == "AnIn1")
        {
            var analogValue =
                modelBrowser.ReadAnalogMeasurement(connection, node.Reference);
            Console.WriteLine(analogValue);
        }
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
Console.WriteLine(File.ReadAllText(pathReport));

return 0;


static void PrintUsage()
{
    Console.WriteLine("Usage: SclInspector <SCD file> <IED name> [address] [port]");
    Console.WriteLine("SCD — substation project (SCL)");
    Console.WriteLine("IED name — name in <IED name=\"...\">, f.e. IED_T1");
    Console.WriteLine("address — terminal IP, by default 127.0.0.1");
    Console.WriteLine("port — TCP-port MMS, by default 102");
}