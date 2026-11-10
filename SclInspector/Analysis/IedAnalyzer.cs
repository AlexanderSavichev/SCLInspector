using SclInspector.Models;

namespace SclInspector.Analysis;

public class IedAnalyzer
{
    public List<ManufacturerSummary> SummarizeByManufacturer(IEnumerable<Ied> devices)
    {
        return devices.GroupBy(device => device.Manufacturer)
            .OrderBy(group => group.Key)
            .Select(group => new ManufacturerSummary (
                group.Key,
                group.Count(),
                group.Count(device => device.IsEnabled)
            ))
            .ToList();
    }
}