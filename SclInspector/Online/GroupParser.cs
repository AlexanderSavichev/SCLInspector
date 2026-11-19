namespace SclInspector.Online;

public class GroupParser
{
    public LogicalNodeGroup NodeGroupDefiner(string node)
    {
        
        if (string.IsNullOrEmpty(node))
        {
            return LogicalNodeGroup.Unknown;
        }
        
        var groupDictionary = new Dictionary<char, LogicalNodeGroup>
        {
            ['L'] = LogicalNodeGroup.System,
            ['P'] = LogicalNodeGroup.Protection,
            ['R'] = LogicalNodeGroup.Automatic,
            ['C'] = LogicalNodeGroup.Control,
            ['X'] = LogicalNodeGroup.SwitchingUnit,
            ['T'] = LogicalNodeGroup.MeasuringTransformers,
            ['M'] = LogicalNodeGroup.Measuring
        };
        
        return groupDictionary.GetValueOrDefault(node[0], LogicalNodeGroup.Unknown);
    }
}

public enum LogicalNodeGroup
{
    Unknown,
    System,
    Protection,
    Automatic,
    Control,
    SwitchingUnit,
    MeasuringTransformers,
    Measuring
}