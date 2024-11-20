#!/bin/bash

SELECTION="$(printf "1 - Lock\n2 - Log out\n3 - Reboot\n4 - Shutdown" | fuzzel --dmenu -l 4 -p "⏻ Power Menu: ")"

case $SELECTION in
	*"Lock")
		hyprlock;;
	*"Log out")
		hyprctl dispatch exit;;
	*"Reboot")
		systemctl reboot;;
	*"Shutdown")
		systemctl poweroff;;
esac
