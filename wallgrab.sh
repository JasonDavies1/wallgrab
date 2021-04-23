#!/bin/bash
CURRENT_DIR="$(pwd)"
WALLPAPER_DIR="/home/jason/Pictures/Wallpapers"
INDEX=$(rand -M 10)
NEW_FILE_NAME="$(date +%d-%m-%y)-$INDEX.jpg"

cd $WALLPAPER_DIR
until ( [ ! -f $NEW_FILE_NAME ] ) ; do
	INDEX=$(rand -M 10)
	NEW_FILE_NAME="$(date +%d-%m-%y)-$INDEX.jpg"
done
curl -sO "$(curl -s "https://bing.biturl.top/?resolution=1920&index=$INDEX" | jq -r .url)"
mv "$(ls -t | head -n 1)" $NEW_FILE_NAME
gsettings set org.gnome.desktop.background picture-uri file://$WALLPAPER_DIR/$NEW_FILE_NAME
cd $CURRENT_DIR
