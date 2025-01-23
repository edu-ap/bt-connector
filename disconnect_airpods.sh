#!/bin/bash

# Replace MAC_ADDRESS with your AirPods Pro MAC address
MAC_ADDRESS="XX:XX:XX:XX:XX:XX"

# Disconnect from AirPods Pro
echo "Disconnecting from AirPods Pro..."
bluetoothctl disconnect $MAC_ADDRESS

# Wait a moment to ensure disconnection is complete
sleep 2

# Check if disconnection was successful
if ! bluetoothctl info $MAC_ADDRESS | grep -q "Connected: yes"; then
    echo "Successfully disconnected from AirPods Pro"
    exit 0
else
    echo "Failed to disconnect from AirPods Pro"
    exit 1
fi 