#!/bin/bash

# $1 - your input video
# Note: have to create params for custom fade in/out times
ffmpeg -i $1 -vf "fade=t=in:st=0:d=3,fade=t=out:st=4:d=2" -c:a copy out_faded.mp4
