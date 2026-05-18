#!/bin/bash

WALL_DIR="$HOME/Imágenes/wallpapers"
HOUR=$(date +%H)

if [ $HOUR -ge 5 ] && [ $HOUR -lt 8 ]; then
    WALL="$WALL_DIR/wall1.jpg"
elif [ $HOUR -ge 8 ] && [ $HOUR -lt 12 ]; then
    WALL="$WALL_DIR/wall2.jpg"
elif [ $HOUR -ge 12 ] && [ $HOUR -lt 15 ]; then
    WALL="$WALL_DIR/wall3.jpg"
elif [ $HOUR -ge 15 ] && [ $HOUR -lt 18 ]; then
    WALL="$WALL_DIR/wall4.jpg"
elif [ $HOUR -ge 18 ] && [ $HOUR -lt 20 ]; then
    WALL="$WALL_DIR/wall5.jpg"
else
    WALL="$WALL_DIR/wall6.jpg"
fi

gsettings set org.gnome.desktop.background picture-uri "file://$WALL"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$WALL"
