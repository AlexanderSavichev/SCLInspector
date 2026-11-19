using System.Text.RegularExpressions;

namespace SclInspector.Models;

public readonly record struct LogicalNodeInfo(
    string IedName,
    string AccessPointName,
    string LDeviceInst,
    LogicalNodeName LogicalNode);

public readonly record struct LogicalNodeName(
    string Prefix,
    string LnClass,
    string Inst)
{
    public string Name => $"{Prefix}{LnClass}{Inst}";
    
    public static LogicalNodeName Parse(string text)
    {
        if (text == "LLN0")
        {
            return new LogicalNodeName("", "LLN0", "");
        }
        
        var match = Regex.Match(text, @"\A(?<prefix>[A-Za-z0-9_]*?)(?<lnClass>[A-Z]{4})(?<inst>[0-9]+)\z");
        if (!match.Success)
        {
            throw new InvalidDataException($"'{text}' is not an object reference");
        }

        return new LogicalNodeName(match.Groups["prefix"].Value, match.Groups["lnClass"].Value, match.Groups["inst"].Value);
    }
}