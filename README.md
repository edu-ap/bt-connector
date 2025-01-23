# Bluetooth AirPods Connector

A simple utility to connect and disconnect Apple AirPods Pro on Linux systems using the command line or desktop shortcuts.

## Prerequisites

- Linux system with BlueZ (bluetooth stack)
- `bluetoothctl` command-line tool
- Previously paired AirPods Pro

## Installation

1. Clone this repository:
```bash
git clone https://github.com/edu-ap/bt-connector.git
cd bt-connector
```

2. Make the scripts executable:
```bash
chmod +x connect_airpods.sh disconnect_airpods.sh find_airpods.sh
```

3. Edit the scripts to add your AirPods Pro MAC address:
   - Replace `XX:XX:XX:XX:XX:XX` in all three scripts with your AirPods Pro MAC address
   - To find your AirPods Pro MAC address, use `bluetoothctl devices | grep AirPods`

4. Copy the desktop files to your applications directory:
```bash
cp airpods-connect.desktop airpods-disconnect.desktop ~/.local/share/applications/
```

5. Edit the desktop files to update the `Exec` path:
   - Replace `/path/to/bt-connector/` with the actual path where you cloned the repository

## Usage

### Command Line

- To connect: `./connect_airpods.sh`
- To disconnect: `./disconnect_airpods.sh`
- To check connection status: `./find_airpods.sh`

### Desktop Shortcuts

After installation, you can use the desktop shortcuts:
- "Connect AirPods Pro" to connect
- "Disconnect AirPods Pro" to disconnect

The shortcuts will appear in your applications menu.

## Files

- `connect_airpods.sh`: Script to connect to AirPods Pro
- `disconnect_airpods.sh`: Script to disconnect from AirPods Pro
- `find_airpods.sh`: Script to check AirPods Pro connection status
- `airpods-connect.desktop`: Desktop entry for connection
- `airpods-disconnect.desktop`: Desktop entry for disconnection

## License

MIT License

## Contributing

Feel free to open issues or submit pull requests if you have suggestions for improvements. 