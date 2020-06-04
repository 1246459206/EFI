DefinitionBlock ("", "SSDT", 2, "hack", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // XHC (8086_9d2f)
            "XHC", Package()
            {
                "port-count", Buffer() { 0x10, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS04", Package()
                      {
                          "UsbConnector", 255,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                      },
                      "HS01", Package()
                      {
                          "UsbConnector", 0,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                      },
                      "HS08", Package()
                      {
                          "UsbConnector", 255,
                          "port", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                      },
                      "HS06", Package()
                      {
                          "UsbConnector", 255,
                          "port", Buffer() { 0x06, 0x00, 0x00, 0x00 },
                      },
                      "SS01", Package()
                      {
                          "UsbConnector", 3,
                          "port", Buffer() { 0x0D, 0x00, 0x00, 0x00 },
                      },
                      "SS04", Package()
                      {
                          "UsbConnector", 3,
                          "port", Buffer() { 0x10, 0x00, 0x00, 0x00 },
                      },
                      "HS03", Package()
                      {
                          "UsbConnector", 0,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                      },
                },
            },
        })
    }
}
