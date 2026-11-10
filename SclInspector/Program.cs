using SclInspector.Models;
using SclInspector.Reporting;
using IEC61850.Client;
using IEC61850.Common;
using SclInspector.Analysis;
using SclInspector.Online;
using SclInspector.Parsing;


var reportWriter = new SclReportWriter();
var modelBrowser = new IedModelBrowser();
var nodes = new List<OnlineDataObject>();
var pathReport = "logical-nodes-report.txt";

var sclReader = new SclReader();
var settingsAnalyzer = new ProtectionSettingsAnalyzer();
var path = Path.Combine(AppContext.BaseDirectory, "Samples", "project_307.scd");
var xml = File.ReadAllText(path);

try
{
    using var connection = new IedConnection();
    
    connection.Connect("127.0.0.1", 8103);
    Console.WriteLine("Connected to the test IED");
    
    var logicalNodes = modelBrowser.ReadAllDataObjects(connection);
    var protectionSetsFromSCL = sclReader.ReadProtectionSettings(xml, "IED_T1");
    foreach (var settings in protectionSetsFromSCL)
    {
        Console.WriteLine($"SCL: {settings}");
    }
    var protectionSetsFromServer = modelBrowser.ReadProtectionSettingsFromIed(connection, "IED_T1PROT");
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
}

reportWriter.Write(pathReport, nodes);
Console.WriteLine(File.ReadAllText(pathReport));











