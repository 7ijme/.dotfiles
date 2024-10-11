#!/bin/bash

CHOICE=$(echo -e "Logout\nReboot\nShutdown" | wofi --dmenu --width 200 --height 150)

case "$CHOICE" in
    Logout)
        hyprctl dispatch exit ;;
    Reboot)
        systemctl reboot ;;
    Shutdown)
        systemctl poweroff ;;
esac

