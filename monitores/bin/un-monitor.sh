#!/usr/bin/bash

IN="eDP1"
EXT="HDMI2"
#IN="LVDS1"
#EXT="HDMI1"

#xrandr --output $IN --auto $EXT --off
xrandr --output eDP1 --auto --output HDMI2 --off
feh  --bg-fill /home/jm/Pictures/wallpapers/latest.png
#/home/jm/Pictures/wallpapers/Fedora-Backgrounds-HD-12.jpg

