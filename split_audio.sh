#!/bin/bash

file1="/home/raivo/Audio/Music/The Midnight/the_midnight-monsters_tracklist"
file2="/home/raivo/Audio/Music/The Midnight/The Midnight - Monsters (2020).mp3"

time1=$(sed -n 1p "$file1" | head -c 8)
time2=$(sed -n 2p "$file1" | head -c 8)

echo ${time2}

ffmpeg -ss ${time1} -i $file2 -to ${time2} out.mp3
