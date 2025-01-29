#!/bin/bash

# Define the options for the power menu
options=" Shutdown\n Restart\n Suspend\n Logout"

# Show the options in wofi
chosen=$(echo -e "$options" | wofi --dmenu --prompt "Power Menu" --width 250 --height 300)

# Execute the selected action
case "$chosen" in
    " Shutdown") systemctl poweroff ;;
    " Restart") systemctl reboot ;;
    " Suspend") systemctl suspend ;;
    " Logout") hyprctl dispatch exit ;;
    *) ;;
esac
