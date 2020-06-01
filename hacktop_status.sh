#!/bin/bash
# You need lm-sensors package installed.
capacity=`cat /sys/class/power_supply/BAT0/capacity`
bat_status=`cat /sys/class/power_supply/BAT0/status`
temp=`sensors | awk '/^Core 0/ {print "CPU temp: "$3}'`

echo Battery: $capacity%, $bat_status;
echo $temp
