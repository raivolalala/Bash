#!/bin/bash

file1="/home/raivo/Audio/Music/The Midnight/the_midnight-monsters_tracklist"
file2="/home/raivo/Audio/Music/The Midnight/The Midnight - Monsters (2020).mp3"

# Timestamps - this file needs to start with %H:%m:%s, so
# please adjust it accordingly.
# TODO: need to create a calculation for song lengths.
time1=$(sed -n 1p "$file1" | head -c 8)
time2=$(sed -n 2p "$file1" | head -c 8)
time3=$(sed -n 3p "$file1" | head -c 8)
time4=$(sed -n 4p "$file1" | head -c 8)

# Track names
track1=$(sed -n 1p "$file1" | cut -c10-)
track2=$(sed -n 2p "$file1" | cut -c10-)
track3=$(sed -n 3p "$file1" | cut -c10-)

# Cut the file into tracks
ffmpeg -ss ${time1} -i "$file2" -to ${time2} "${track1}.mp3"
ffmpeg -ss ${time2} -i "$file2" -to ${time3} "${track2}.mp3"
ffmpeg -ss ${time3} -i "$file2" -to ${time4} "${track3}.mp3"
