#!/bin/bash

tracklist=$1
music=$2

# Timestamps - this file needs to start with %H:%m:%s, so
# please adjust it accordingly.
# TODO: need to create a calculation for song lengths.
time1=$(sed -n 1p "$tracklist" | head -c 8)
time2=$(sed -n 2p "$tracklist" | head -c 8)
time3=$(sed -n 3p "$tracklist" | head -c 8)
time4=$(sed -n 4p "$tracklist" | head -c 8)

# Track names
track1=$(sed -n 1p "$tracklist" | cut -c10-)
track2=$(sed -n 2p "$tracklist" | cut -c10-)
track3=$(sed -n 3p "$tracklist" | cut -c10-)

# Cut the file into tracks
ffmpeg -ss ${time1} -i "$music" -to ${time2} "${track1}.mp3"
ffmpeg -ss ${time2} -i "$music" -to ${time3} "${track2}.mp3"
ffmpeg -ss ${time3} -i "$music" -to ${time4} "${track3}.mp3"
