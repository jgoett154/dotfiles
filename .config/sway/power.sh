#!/bin/bash

# Based on script by adnan360 and modified for sway
# Gist: https://gist.github.com/adnan360/f86012baeb4c9ca4f1af033550b03033

# Simple script to handle a DIY shutdown menu. When run you should see a bunch of options (shutdown, reboot etc.)
#
# Requirements:
# - swayw,
# - systemd, but you can replace the commands for OpenRC or anything else
#
# Instructions:
# - Save this file as power.sh or anything
# - Give it exec priviledge, or chmod +x /path/to/power.sh
# - Run it

if [[ $1 = "Logout" ]]; then
	swaymsg exit
elif [[ $1 = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $1 = "Reboot" ]]; then
	systemctl reboot
elif [[ $1 = "Suspend" ]]; then
	systemctl suspend
elif [[ $1 = "Hibernate" ]]; then
	systemctl hibernate
elif [[ $1 = "Hybrid-sleep" ]]; then
	systemctl hibernate
elif [[ $1 = "Suspend-then-hibernate" ]]; then
	systemctl suspend-then-hibernate
fi
