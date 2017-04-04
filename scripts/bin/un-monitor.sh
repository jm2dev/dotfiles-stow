#!/usr/bin/bash

IN="eDP-1"
EXT="HDMI-2"
#IN="LVDS1"
#EXT="HDMI1"

#xrandr --output $IN --auto $EXT --off
xrandr --output eDP-1 --auto --output HDMI-2 --off
feh  --bg-fill /home/jm/Pictures/wallpapers/happy-bird-imgur-0Fsr8ME.jpg
#/home/jm/Pictures/wallpapers/Fedora-Backgrounds-HD-12.jpg

