#!/bin/bash

# Simple script to handle a DIY shutdown menu. When run you should see a bunch of options (shutdown, reboot etc.)
#
# Requirements:
# - rofi
# - systemd, but you can replace the commands for OpenRC or anything else
#
# Instructions:
# - Save this file as power.sh or anything
# - Give it exec priviledge, or chmod +x /path/to/power.sh
# - Run it

#chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nHibernate\nHybrid-sleep\nSuspend-then-hibernate" | bemenu -i)
# Info about some states are available here:
# https://www.freedesktop.org/software/systemd/man/systemd-sleep.conf.html#Description

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
