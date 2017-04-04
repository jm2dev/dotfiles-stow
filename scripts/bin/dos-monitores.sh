#!/usr/bin/bash

IN="eDP-1"
EXT="HDMI-2"
#IN="LVDS1"
#EXT="HDMI1"

if (xrandr | grep "${EXT} disconnected"); then
    xrandr --output $IN --auto $EXT --off
    feh  --bg-fill /home/jm/Pictures/wallpapers/happy-bird-imgur-0Fsr8ME.jpg
else
    xrandr --output $IN --auto --output $EXT --auto --right-of $IN
    feh  --bg-fill /home/jm/Pictures/wallpapers/happy-bird-imgur-0Fsr8ME.jpg /home/jm/Pictures/wallpapers/linux__pro__s_operating_system_by_alexdevillx-d45w5mp.jpg
fi

