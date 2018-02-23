#!/usr/bin/env sh

grep POWER_SUPPLY_CAPACITY= /sys/class/power_supply/BAT0/uevent | awk -F "=" '{print $2}'

