#!/bin/bash

# Check if Bluetooth is currently powered on or off
status=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')

if [ "$1" == "--toggle" ]; then
    if [ "$status" == "yes" ]; then
        # Turn Bluetooth off
        bluetoothctl power off
        notify-send "Bluetooth turned off"
    else
        # Turn Bluetooth on
        bluetoothctl power on
        notify-send "Bluetooth turned on"
    fi
else
    # Display current Bluetooth status
    if [ "$status" == "yes" ]; then
        echo " "  # Bluetooth icon
    else
        echo ""  # Bluetooth off icon
    fi
fi
