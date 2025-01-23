#!/bin/bash

# Replace MAC_ADDRESS with your AirPods Pro MAC address
MAC_ADDRESS="XX:XX:XX:XX:XX:XX"

# Get info about the AirPods Pro
bluetoothctl info $MAC_ADDRESS 