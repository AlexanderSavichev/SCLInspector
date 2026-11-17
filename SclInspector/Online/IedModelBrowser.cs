using IEC61850.Client;
using IEC61850.Common;
using SclInspector.Models;

namespace SclInspector.Online;

public class IedModelBrowser
{
    public List<OnlineDataObject> ReadAllDataObjects(IedConnection connection)
    {
        var resultList = new List<OnlineDataObject>();
        var logicalDevices = connection.GetServerDirectory();
        foreach (var logicalDevice in logicalDevices)
        {
            var logicalNodes = connection.GetLogicalDeviceDirectory(logicalDevice)
                .Select(node => new OnlineLogicalNode(logicalDevice, node));
            foreach (var node in logicalNodes)
            {
                resultList.AddRange(ReadDataObjects(connection, node));
            }
        }
        return resultList;
    }

    private List<OnlineDataObject> ReadDataObjects(IedConnection connection, OnlineLogicalNode node)
    {
        var resultList = new List<OnlineDataObject>();
        var nodePath = $"{node.LogicalDeviceName}/{node.LogicalNodeName}";
        var dataObjects = connection.GetLogicalNodeDirectory(nodePath, ACSIClass.ACSI_CLASS_DATA_OBJECT)
            .Select(dataObj => new OnlineDataObject(node.LogicalDeviceName, node.LogicalNodeName, dataObj));
        resultList.AddRange(dataObjects);
        return resultList;
    }

    public AnalogMeasurement ReadAnalogMeasurement(IedConnection connection, string dataObjectReference)
    {
        float value = connection.ReadFloatValue($"{dataObjectReference}.mag.f", FunctionalConstraint.MX);
        Quality quality = connection.ReadQualityValue($"{dataObjectReference}.q", FunctionalConstraint.MX);
        Timestamp time = connection.ReadTimestampValue($"{dataObjectReference}.t", FunctionalConstraint.MX);
        
        return new AnalogMeasurement(
            dataObjectReference,  
            value, 
            quality.Validity, 
            quality.Test, 
            quality.OldData, 
            quality.Substituted, 
            time.AsDateTime(), 
            time.ClockNotSynchronized,
            time.ClockFailure);
    }

    private ProtectionSettings ReadProtectionSettings(IedConnection connection, string logicalNodeReference, string iedName, int settingsGroup)
    {
        var groups = CheckProtectionGroups(connection, iedName);

        var functionalConstraint = FunctionalConstraint.SP;

        if (groups.NumberOfGroups > 0 && groups.ActiveGroup == settingsGroup)
        {
            functionalConstraint = FunctionalConstraint.SG;
        }
        else if (groups.NumberOfGroups > 0 && groups.ActiveGroup != settingsGroup)
        {
            functionalConstraint = FunctionalConstraint.SE;
            connection.WriteValue($"{iedName}/LLN0.SGCB.EditSG", FunctionalConstraint.SP, new MmsValue((uint)settingsGroup)); 
        }
        
        var reference = $"{logicalNodeReference}.StrVal";
        var strValAttributes = connection.GetDataDirectory(reference);
        var strVal = connection.ReadFloatValue($"{reference}.setMag.f", functionalConstraint);
        string? resultUnitText = null;
        var unitsCodes = new Dictionary<long, string>
        {
            [1] = "No unit", [4] = "s", [5] = "A", [29] = "V", [33] = "Hz"
        };
        var multiplierCodes = new Dictionary<long, string>
        {
            [-3] = "m", [0] = "", [3] = "k", [6] = "M"
        };
        if (strValAttributes.Contains("units"))
        {
            var units = connection.ReadIntegerValue($"{reference}.units.SIUnit", FunctionalConstraint.CF);
            var multiplier = connection.ReadIntegerValue($"{reference}.units.multiplier", FunctionalConstraint.CF);
            string multiplierText = multiplierCodes.GetValueOrDefault(multiplier) ?? "";
            string unitText = unitsCodes.GetValueOrDefault(units) ?? $"Unknown code {units}";
            resultUnitText = multiplierText + unitText;
        }
        
        
        float? minVal = null;
        if (strValAttributes.Contains("minVal"))
        {
            minVal = connection.ReadFloatValue($"{reference}.minVal.f", FunctionalConstraint.CF);
        }
        float? maxVal = null;
        if (strValAttributes.Contains("maxVal"))
        {
            maxVal = connection.ReadFloatValue($"{reference}.maxVal.f", FunctionalConstraint.CF);
        }
        float? stepSize = null;
        if (strValAttributes.Contains("stepSize"))
        {
            stepSize = connection.ReadFloatValue($"{reference}.stepSize.f", FunctionalConstraint.CF);
        }
        
        long tripVal = connection.ReadIntegerValue($"{logicalNodeReference}.OpDlTmms.setVal", functionalConstraint);

        if (groups.NumberOfGroups > 0 && groups.ActiveGroup != settingsGroup)
        {
            connection.WriteValue($"{iedName}/LLN0.SGCB.EditSG", FunctionalConstraint.SP, new MmsValue((uint)0)); 
        }
        
        return new ProtectionSettings(logicalNodeReference, strVal, tripVal, resultUnitText, minVal, maxVal, stepSize);
    }

    public List<ProtectionSettings> ReadProtectionSettingsFromIed(IedConnection connection, string iedName, int? settingsGroup)
    {
        var resultList = new List<ProtectionSettings>();
        var logicalDevices = connection.GetServerDirectory();
        foreach (var device in logicalDevices)
        {
            if (device.Equals(iedName))
            {
                var logicalNodes = connection.GetLogicalDeviceDirectory(device)
                    .Select(node => new OnlineLogicalNode(device, node));
                foreach (var node in logicalNodes)
                {
                    if (node.LogicalNodeName == "PTOC1" || node.LogicalNodeName == "PTOC2")
                    {
                        resultList.Add(ReadProtectionSettings(connection, node.Reference, iedName, settingsGroup?? 1));
                    }
                }
            }
        }
        return resultList;
    }

    public ProtectionGroups CheckProtectionGroups(IedConnection connection, string reference)
    {
        var controlBlocks = connection.GetLogicalNodeDirectory($"{reference}/LLN0", ACSIClass.ACSI_CLASS_SGCB);

        if (controlBlocks.Count == 0)
        {
            return new ProtectionGroups(0, 0);
        }

        uint numberOfGroups = connection.ReadValue($"{reference}/LLN0.SGCB.NumOfSG", FunctionalConstraint.SP).ToUint32();
        uint activeGroup = connection.ReadValue($"{reference}/LLN0.SGCB.ActSG", FunctionalConstraint.SP).ToUint32();

        return new ProtectionGroups((int)numberOfGroups, activeGroup);
    }
}