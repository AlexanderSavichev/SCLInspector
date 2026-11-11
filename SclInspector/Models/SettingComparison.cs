namespace SclInspector.Models;

public record SettingComparison(
    string LogicalNodeReference,  
    string Parameter,             // StrVal, OpDlTmms, ..
    double? SclValue,            
    double? IedValue,          
    string Unit,                 
    SettingStatus Status);