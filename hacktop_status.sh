#!/bin/bash
capacity=`cat /sys/class/power_supply/BAT0/capacity`
bat_status=`cat /sys/class/power_supply/BAT0/status`
temp=`sensors | awk '/^Core 0/ {printf "\nCPU temp: "$3}'`

echo Battery: $capacity%, $bat_status, $temp
