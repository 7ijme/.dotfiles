#!/bin/bash

active_workspace=$(hyprctl -j activeworkspace | jq -r '.id')

workspace_rules=$(hyprctl -j workspacerules)

gaps_in=$(echo "$workspace_rules" | jq -r --arg ws "$active_workspace" '.[] | select(.workspaceString == $ws) | .gapsIn[0]')

if [ "$gaps_in" == "0" ]; then
    hyprctl keyword workspace "$active_workspace", gapsin:5
else
    hyprctl keyword workspace "$active_workspace", gapsin:0
fi
