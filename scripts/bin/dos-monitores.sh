#!/usr/bin/bash

IN="LVDS1"
EXT="HDMI1"

if (xrandr | grep "${EXT} disconnected"); then
    xrandr --output $IN --auto $EXT --off
else
    xrandr --output $IN --auto --output $EXT --auto --above $IN
fi
