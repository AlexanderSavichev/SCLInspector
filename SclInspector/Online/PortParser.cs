namespace SclInspector.Online;

public class PortParser
{
    public static bool TryReadPort(string text, out int port)
    {
        var result = int.TryParse(text, out port);
        if (port < 1 || port > 65535)
        {
            port = 0;
            return false;
        }
        return result;
    }
}