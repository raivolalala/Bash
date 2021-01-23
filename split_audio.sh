#!/bin/bash


# Timestamps - this file needs to start with %H:%m:%s, so
# please adjust it accordingly.
# TODO: need to create a calculation for song lengths.
time1=$(sed -n 1p $1 | head -c 8)
time2=$(sed -n 2p $1 | head -c 8)
time3=$(sed -n 3p $1 | head -c 8)
time4=$(sed -n 4p $1 | head -c 8)
time5=$(sed -n 5p $1 | head -c 8)
time6=$(sed -n 6p $1 | head -c 8)
time7=$(sed -n 7p $1 | head -c 8)
time8=$(sed -n 8p $1 | head -c 8)
time9=$(sed -n 9p $1 | head -c 8)
time10=$(sed -n 10p $1 | head -c 8)
time11=$(sed -n 11p $1 | head -c 8)

# Track names
track1=$(sed -n 1p $1 | cut -c10-)
track2=$(sed -n 2p $1 | cut -c10-)
track3=$(sed -n 3p $1 | cut -c10-)
track4=$(sed -n 4p $1 | cut -c10-)
track5=$(sed -n 5p $1 | cut -c10-)
track6=$(sed -n 6p $1 | cut -c10-)
track7=$(sed -n 7p $1 | cut -c10-)
track8=$(sed -n 8p $1 | cut -c10-)
track9=$(sed -n 9p $1 | cut -c10-)
track10=$(sed -n 10p $1 | cut -c10-)

# TODO: need to add line numbers as track numbers.
# Cut the file into tracks
ffmpeg -ss ${time1} -i "$2" -to ${time2} "${track1}.mp3"
ffmpeg -ss ${time2} -i "$2" -to ${time3} "${track2}.mp3"
ffmpeg -ss ${time3} -i "$2" -to ${time4} "${track3}.mp3"

ffmpeg -ss ${time4} -i "$2" -to ${time5} "${track4}.mp3"
ffmpeg -ss ${time5} -i "$2" -to ${time6} "${track5}.mp3"
ffmpeg -ss ${time6} -i "$2" -to ${time7} "${track6}.mp3"

ffmpeg -ss ${time7} -i "$2" -to ${time8} "${track7}.mp3"
ffmpeg -ss ${time8} -i "$2" -to ${time9} "${track8}.mp3"
ffmpeg -ss ${time9} -i "$2" -to ${time10} "${track9}.mp3"

ffmpeg -ss ${time10} -i "$2" -to ${time10} "${track10}.mp3"
