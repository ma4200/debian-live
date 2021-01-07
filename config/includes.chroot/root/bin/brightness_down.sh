#!/bin/bash

val=`cat /sys/class/backlight/intel_backlight/brightness`
max=`cat /sys/class/backlight/intel_backlight/max_brightness`

val=$((val - 50))

if (( val < 0 )); then
    val=0
fi

echo $val > /sys/class/backlight/intel_backlight/brightness

echo "$val/$max"

