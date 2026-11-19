using System.Xml.Linq;
using SclInspector.Models;
using System.Globalization;

namespace SclInspector.Parsing;

public class SclReader
{
    private const string NameSpace = "http://www.iec.ch/61850/2003/SCL";

    public List<Ied> ReadIeds(string xml)
    {
        XNamespace ns = NameSpace;
        var resultList = new List<Ied>();
        var document = XDocument.Parse(xml);
        ValidateXml(xml);
        var root = document.Root ?? throw new InvalidDataException("Root is missing");

        foreach (var element in root.Elements(ns + "IED"))
        {
            var name = ReadRequiredAttribute(element, "name");
            var manufacturer = (string?)element.Attribute("manufacturer") ?? "Unknown";
            var description = (string?)element.Attribute("desc");
            resultList.Add(new Ied(name, manufacturer, false, description));
        }

        return resultList;
    }

    public List<LogicalNodeInfo> ReadLogicalNodes(string xml)
    {
        XNamespace ns = NameSpace;
        var resultList = new List<LogicalNodeInfo>();
        var document = XDocument.Parse(xml);
        ValidateXml(xml);
        var root = document.Root ?? throw new InvalidDataException("Root is missing");
        var ieds = root.Elements(ns + "IED").ToList();

        foreach (var ied in ieds)
        {
            foreach (var accessPoint in ied.Elements(ns + "AccessPoint"))
            {
                var logicalDevices = accessPoint
                    .Elements(ns + "Server")
                    .SelectMany(server => server.Elements(ns + "LDevice"));

                foreach (var logicalDevice in logicalDevices)
                {
                    var nodes = logicalDevice.Elements()
                        .Where(element =>
                            element.Name == ns + "LN" ||
                            element.Name == ns + "LN0");

                    foreach (var node in nodes)
                    {
                        var nodePrefix = (string?)node.Attribute("prefix");
                        if (String.IsNullOrWhiteSpace(nodePrefix))
                        {
                            nodePrefix = "";
                        }

                        resultList.Add(new LogicalNodeInfo(
                            ReadRequiredAttribute(ied, "name"),
                            ReadRequiredAttribute(accessPoint, "name"),
                            ReadRequiredAttribute(logicalDevice, "inst"),
                            new LogicalNodeName(
                                nodePrefix,
                                ReadRequiredAttribute(node, "lnClass"),
                                (string?)node.Attribute("inst") ??
                                throw new InvalidDataException("Logical node instance is missing"))));
                    }
                }
            }
        }

        return resultList;
    }

    public List<ProtectionSettings> ReadProtectionSettings(string xml, string iedName, int? settingsGroup)
    {
        XNamespace ns = NameSpace;
        if (settingsGroup == null)
        {
            settingsGroup = 1;
        }

        var resultList = new List<ProtectionSettings>();
        var document = XDocument.Parse(xml);
        ValidateXml(xml);
        var root = document.Root ?? throw new InvalidDataException("Root is missing");
        var ieds = root.Elements(ns + "IED").ToList();

        var iedNameFromList = ieds
                                  .FirstOrDefault(element => ReadRequiredAttribute(element, "name") == iedName)
                              ?? throw new InvalidDataException("IED name is missing");

        foreach (var accessPoint in iedNameFromList.Elements(ns + "AccessPoint"))
        {
            var logicalDevices = accessPoint
                .Elements(ns + "Server")
                .SelectMany(server => server.Elements(ns + "LDevice"));

            foreach (var logicalDevice in logicalDevices)
            {
                var nodes = logicalDevice.Elements()
                    .Where(element => element.Name == ns + "LN" && ReadRequiredAttribute(element, "lnClass") == "PTOC");

                foreach (var node in nodes)
                {
                    var strValXElement = node.Elements(ns + "DOI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "StrVal");

                    var strValText = strValXElement
                        ?.Elements(ns + "SDI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "setMag")
                        ?.Elements(ns + "DAI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "f")
                        ?.Elements(ns + "Val")
                        .FirstOrDefault(element =>
                            ((int?)element.Attribute("sGroup") ?? settingsGroup) == settingsGroup)
                        ?.Value;
                    if (!float.TryParse(strValText, NumberStyles.Float, CultureInfo.InvariantCulture, out var strVal))
                    {
                        throw new InvalidDataException("StrVal is invalid");
                    }

                    var strValUnit = strValXElement
                        ?.Elements(ns + "SDI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "units")
                        ?.Elements(ns + "DAI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "SIUnit")
                        ?.Element(ns + "Val")
                        ?.Value;

                    var strValMultiplier = strValXElement
                        ?.Elements(ns + "SDI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "units")
                        ?.Elements(ns + "DAI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "multiplier")
                        ?.Element(ns + "Val")
                        ?.Value;

                    var resultUnit = strValUnit is null ? null : strValMultiplier + strValUnit;

                    var stepSize = (float?)strValXElement
                        ?.Elements(ns + "SDI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "stepSize")
                        ?.Elements(ns + "DAI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "f")
                        ?.Element(ns + "Val");

                    var strValMin = (float?)strValXElement
                        ?.Elements(ns + "SDI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "minVal")
                        ?.Elements(ns + "DAI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "f")
                        ?.Element(ns + "Val");

                    var strValMax = (float?)strValXElement
                        ?.Elements(ns + "SDI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "maxVal")
                        ?.Elements(ns + "DAI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "f")
                        ?.Element(ns + "Val");


                    var delayValText = node.Elements(ns + "DOI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "OpDlTmms")
                        ?.Elements(ns + "DAI")
                        .SingleOrDefault(element => ReadRequiredAttribute(element, "name") == "setVal")
                        ?.Elements(ns + "Val")
                        .FirstOrDefault(element =>
                            ((int?)element.Attribute("sGroup") ?? settingsGroup) == settingsGroup)
                        ?.Value;
                    if (!int.TryParse(delayValText, NumberStyles.Integer, CultureInfo.InvariantCulture,
                            out var delayVal))
                    {
                        throw new InvalidDataException("DelayVal is invalid");
                    }

                    var nodePrefix = (string?)node.Attribute("prefix");
                    if (String.IsNullOrWhiteSpace(nodePrefix))
                    {
                        nodePrefix = "";
                    }

                    var nodeName = iedName +
                                   ReadRequiredAttribute(logicalDevice, "inst") + "/" +
                                   nodePrefix + ReadRequiredAttribute(node, "lnClass") +
                                   ReadRequiredAttribute(node, "inst");
                    if (!float.IsFinite(strVal) || strVal < 0 || delayVal < 0)
                    {
                        throw new InvalidDataException($"StrVal or delayval of {nodeName} is lower than zero");
                    }

                    resultList.Add(new ProtectionSettings(nodeName, strVal, delayVal, resultUnit,
                        strValMin, strValMax, stepSize));
                }
            }
        }

        return resultList;
    }

    private static void ValidateXml(string xml)
    {
        XNamespace ns = NameSpace;
        var document = XDocument.Parse(xml);
        var root = document.Root ?? throw new InvalidDataException("Root is missing");
        if (root.Name != ns + "SCL")
        {
            throw new InvalidDataException("Expected SCL root element in the IEC 61850 namespace");
        }

        var ieds = root.Elements(ns + "IED").ToList();

        foreach (var ied in ieds)
        {
            ReadRequiredAttribute(ied, "name");

            foreach (var accessPoint in ied.Elements(ns + "AccessPoint"))
            {
                ReadRequiredAttribute(accessPoint, "name");

                var logicalDevices = accessPoint
                    .Elements(ns + "Server")
                    .SelectMany(server => server.Elements(ns + "LDevice"));

                foreach (var logicalDevice in logicalDevices)
                {
                    ReadRequiredAttribute(logicalDevice, "inst");

                    var nodes = logicalDevice.Elements()
                        .Where(element =>
                            element.Name == ns + "LN" ||
                            element.Name == ns + "LN0");

                    var lnNodes = logicalDevice.Elements(ns + "LN").ToList();

                    foreach (var lnNode in lnNodes)
                    {
                        ReadRequiredAttribute(lnNode, "inst");
                    }

                    foreach (var node in nodes)
                    {
                        var lnInst = (string?)node.Attribute("inst");
                        if (lnInst == null)
                        {
                            throw new InvalidDataException("Logical node instance is null");
                        }

                        ReadRequiredAttribute(node, "lnClass");
                    }
                }
            }
        }
    }

    private static string ReadRequiredAttribute(XElement element, string attributeName)
    {
        var value = (string?)element.Attribute(attributeName);

        if (string.IsNullOrWhiteSpace(value))
        {
            throw new InvalidDataException(
                $"Element '{element.Name.LocalName}': attribute '{attributeName}' is missing or blank");
        }

        return value;
    }
}