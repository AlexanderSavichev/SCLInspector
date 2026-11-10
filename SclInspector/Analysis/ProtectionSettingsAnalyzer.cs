using SclInspector.Models;

namespace SclInspector.Analysis;

public class ProtectionSettingsAnalyzer
{
    public void PtocAnalyzer(List<ProtectionSettings> protectionSets1, List<ProtectionSettings> protectionSets2)
    {
        if (protectionSets1 == null || protectionSets2 == null)
        {
            throw new InvalidDataException("protectionSets1 or protectionSets2 are null");
        }

        foreach (var protectionSet1 in protectionSets1)
        {
            foreach (var protectionSet2 in protectionSets2)
            {
                if (protectionSet1.LogicalNodeReference.Equals(protectionSet2.LogicalNodeReference))
                {
                    if (!protectionSet1.PickupSetting.Equals(protectionSet2.PickupSetting))
                    {
                        throw new InvalidDataException($"{protectionSet1.LogicalNodeReference}  StrVal.setMag.f  SCL: {protectionSet1.PickupSetting} ms  IED: {protectionSet2.PickupSetting} ms  Mismatch");
                    }

                    if (!protectionSet1.OperateDelayMs.Equals(protectionSet2.OperateDelayMs))
                    {
                        throw new InvalidDataException($"{protectionSet1.LogicalNodeReference}  OpDlTmms.setVal  SCL: {protectionSet1.OperateDelayMs} ms  IED: {protectionSet2.OperateDelayMs} ms  Mismatch");
                    }
                }
            }
        }
    }
}