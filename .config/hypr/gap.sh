#!/bin/bash

active_workspace=$(hyprctl -j activeworkspace | jq -r '.id')

workspace_rules=$(hyprctl -j workspacerules)

gaps_out=$(echo "$workspace_rules" | jq -r --arg ws "$active_workspace" '.[] | select(.workspaceString == $ws) | .gapsOut[0]')

if [ "$gaps_out" == "0" ]; then
    hyprctl keyword workspace "$active_workspace", gapsout:10
else
    hyprctl keyword workspace "$active_workspace", gapsout:0
fi
