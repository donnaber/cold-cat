#!/bin/bash

WALLPAPER_DIR="$HOME/Downloads/wallpaper"
DO_NOT_USE_FILE="$HOME/.cache/do-not-use.txt"

# Ensure wallpaper directory exists
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Wallpaper directory does not exist: $WALLPAPER_DIR"
    exit 1
fi

# Get a list of all image files (ensuring full paths and handling spaces)
mapfile -t ALL_FILES < <(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.bmp" -o -iname "*.gif" \) -print0 | xargs -0 -I {} realpath "{}")

# Read used files, ensuring correct formatting
if [ -f "$DO_NOT_USE_FILE" ]; then
    mapfile -t USED_FILES < "$DO_NOT_USE_FILE"
else
    USED_FILES=()
fi

# Reset do-not-use file if all images have been used
if [ "${#USED_FILES[@]}" -ge "${#ALL_FILES[@]}" ]; then
    > "$DO_NOT_USE_FILE"  # Clear the file
    USED_FILES=()
fi

# Filter out used images
UNUSED_FILES=()
for file in "${ALL_FILES[@]}"; do
    if ! grep -Fxq "$file" "$DO_NOT_USE_FILE"; then
        UNUSED_FILES+=("$file")
    fi
done

# Ensure we have an unused wallpaper
if [ ${#UNUSED_FILES[@]} -eq 0 ]; then
    echo "No available wallpapers. Exiting."
    exit 1
fi

# Select a random unused wallpaper
FILE="${UNUSED_FILES[RANDOM % ${#UNUSED_FILES[@]}]}"

# Apply the wallpaper
gsettings set org.gnome.desktop.background picture-uri "file://$FILE"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$FILE"  # For dark mode users

# Save the used wallpaper (ensuring full path is stored correctly)
echo "$FILE" >> "$DO_NOT_USE_FILE"
