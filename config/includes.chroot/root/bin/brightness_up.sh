#!/bin/bash

val=`cat /sys/class/backlight/intel_backlight/brightness`
max=`cat /sys/class/backlight/intel_backlight/max_brightness`

val=$((val + 50))

if (( val > max )); then
    val=$max
fi

echo $val > /sys/class/backlight/intel_backlight/brightness

echo "$val/$max"

