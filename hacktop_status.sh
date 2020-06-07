#!/bin/bash
# You need lm-sensors package installed.

capacity=`cat /sys/class/power_supply/BAT0/capacity`
bat_status=`cat /sys/class/power_supply/BAT0/status | sed 's/.*/\L\0/g'`
temp=`sensors | awk '/^Core 0/ {print "CPU temp: "$3}'`
disk=`df -h | grep '/dev/sda1' | awk '{print "Free: " $4 "; Used %: " $5}'`

echo Battery: $capacity%, $bat_status;
echo $temp
echo Hard drive: $disk
