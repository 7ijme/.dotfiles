#!/bin/bash
# swayidle -w timeout 60 "hyprlock" 
# swayidle -w timeout 600 "hyprctl dispatch dpms off" resume "hyprctl dispatch dpms on"

if pgrep -x "swayidle" > /dev/null; then
	pkill swayidle
else
	hyprctl dispatch exec 'swayidle -w timeout 60 "hyprlock"'
	hyprctl dispatch exec 'swayidle -w timeout 600 "hyprctl dispatch dpms off" resume "hyprctl dispatch dpms on"'
fi
