#!/usr/bin/bash

IN="LVDS1"
EXT="HDMI1"

if (xrandr | grep "${EXT} disconnected"); then
    echo "xrandr --output $IN --auto $EXT --off"
else
    echo "xrandr --output $IN --auto --output $EXT --auto --above $IN"
fi
