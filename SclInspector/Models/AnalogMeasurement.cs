using IEC61850.Common;

namespace SclInspector.Models;

public record AnalogMeasurement(
    string Reference,
    
    float Value,
    
    Validity Validity,
    
    bool IsTest,
    
    bool IsOldData,
    
    bool IsSubstituted,
    
    DateTime SourceTimeUtc,
    
    bool ClockNotSynchronized,
    
    bool ClockFailure
    );