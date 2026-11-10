namespace SclInspector.Models;

public class Ied
{
    public string Name { get; }

    public string Manufacturer { get; }

    public bool IsEnabled { get; private set; }
    
    public string Status => IsEnabled ? "Enabled" : "Disabled";

    public string DisplayName => $"{Name} ({Manufacturer})";

    public string DescriptionLabel => Description ?? "No description";

    public string? Description { get; }

    public Ied(string name, string manufacturer, bool isEnabled, string? description = null)
    {
        if (string.IsNullOrWhiteSpace(name))
        {
            throw new ArgumentException(
                "Name cannot be null or empty",
                nameof(name));
        }
        
        Name = name;
        Manufacturer = manufacturer;
        IsEnabled = isEnabled;
        Description = description;
    }

    public void Enable()
    {
        IsEnabled = true;
    }

    public void Disable()
    {
        IsEnabled = false;
    }
}