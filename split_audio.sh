#!/bin/bash


# Timestamps - this file needs to start with %H:%m:%s, so
# please adjust it accordingly.
# TODO: need to create a calculation for song lengths.
time1=$(sed -n 1p $1 | head -c 8)
time2=$(sed -n 2p $1 | head -c 8)
time3=$(sed -n 3p $1 | head -c 8)
time4=$(sed -n 4p $1 | head -c 8)

# Track names
track1=$(sed -n 1p $1 | cut -c10-)
track2=$(sed -n 2p $1 | cut -c10-)
track3=$(sed -n 3p $1 | cut -c10-)

# TODO: need to add line numbers as track numbers.
# Cut the file into tracks
ffmpeg -ss ${time1} -i "$2" -to ${time2} "${track1}.mp3"
ffmpeg -ss ${time2} -i "$2" -to ${time3} "${track2}.mp3"
ffmpeg -ss ${time3} -i "$2" -to ${time4} "${track3}.mp3"
