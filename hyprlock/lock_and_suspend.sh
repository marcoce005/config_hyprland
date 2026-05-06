#!/bin/bash

hyprlock -c ~/.config/hypr/hyprlock/hyprlock.conf &
LOCKPID=$!

sleep 3m

if ! kill -0 "$LOCKPID" 2> /dev/null;
then
	exit 0;
fi

systemctl suspend
