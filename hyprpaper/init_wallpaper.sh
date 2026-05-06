#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers/"

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Write config in hyprpaper.conf
echo -e "ipc = true
splash = true

wallpaper {
	monitor =
	path = $WALLPAPER
	fit_mode = cover
}" > ~/.config/hypr/hyprpaper.conf
