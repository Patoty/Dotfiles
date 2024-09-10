#!/bin/env zsh 

if [[ "$(hyprctl monitors)" =~ "\sDP-[0-9]+" ]]; then
	if [[ $1 == "open" ]]; then
		hyprctl keyword monitor "eDP-1,1920x1080,auto,1.333333"
	else
		hyprctl keyword monitor "eDP-1,disable"
		~/bin/workspacesanity.sh
	fi
fi
