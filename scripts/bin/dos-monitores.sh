#!/usr/bin/bash

IN="eDP-1"
EXT="HDMI-2"
#IN="LVDS1"
#EXT="HDMI1"

if (xrandr | grep "${EXT} disconnected"); then
    xrandr --output $IN --auto $EXT --off
    feh  --bg-fill /home/jm/Pictures/wallpapers/Fedora-Backgrounds-HD-12.jpg
else
    xrandr --output $IN --auto --output $EXT --auto --above $IN
    feh  --bg-fill /home/jm/Pictures/wallpapers/Fedora-Backgrounds-HD-12.jpg /home/jm/Pictures/wallpapers/Fedora-Backgrounds-HD-12.jpg
fi

