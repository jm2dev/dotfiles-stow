#!/usr/bin/bash

IN="eDP1"
EXT="HDMI2"
#IN="LVDS1"
#EXT="HDMI1"

if (xrandr | grep "${EXT} disconnected"); then
    xrandr --output $IN --auto $EXT --off
    feh  --bg-fill /home/jm/Pictures/wallpapers/latest.png
else
    xrandr --output $IN --auto --output $EXT --auto --right-of $IN
    feh  --bg-fill /home/jm/Pictures/wallpapers/latest.png /home/jm/Pictures/wallpapers/latest-hdmi.png
fi

