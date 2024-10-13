#!/bin/bash

# CHOICE=$(echo -e "Logout\nReboot\nShutdown" | rofi -show dmenu --width 200 --height 150)
CHOICE=$(echo -e "Logout\nReboot\nShutdown" | rofi -dmenu -p "System Menu" -normal-window)

case "$CHOICE" in
    Logout)
        hyprctl dispatch exit ;;
    Reboot)
        systemctl reboot ;;
    Shutdown)
        systemctl poweroff ;;
esac

