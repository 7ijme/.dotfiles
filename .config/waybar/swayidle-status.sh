#!/bin/bash
# swayidle -w timeout 60 "hyprlock" 
# swayidle -w timeout 600 "hyprctl dispatch dpms off" resume "hyprctl dispatch dpms on"

if pgrep -x "hypridle" > /dev/null; then
		echo "Lock  "
else
		echo "Lock  "
fi
