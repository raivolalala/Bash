#!/bin/bash

# $1 - your input video
# Note: have to create params for custom fade in/out times
ffmpeg -i $1 -vf "fade=t=in:st=0:d=3" -c:a copy fade_in.mp4
ffmpeg -i fade_in.mp4 -vf "fade=t=out:st=0:d=3" -c:a copy out_fade.mp4
rm fade_in.mp4
