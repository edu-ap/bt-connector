#!/bin/bash

# Replace MAC_ADDRESS with your AirPods Pro MAC address
MAC_ADDRESS="XX:XX:XX:XX:XX:XX"

# Connect to AirPods Pro
echo "Connecting to AirPods Pro..."
bluetoothctl connect $MAC_ADDRESS

# Wait a moment to ensure connection is established
sleep 2

# Check if connection was successful
if bluetoothctl info $MAC_ADDRESS | grep -q "Connected: yes"; then
    echo "Successfully connected to AirPods Pro"
    exit 0
else
    echo "Failed to connect to AirPods Pro"
    exit 1
fi 