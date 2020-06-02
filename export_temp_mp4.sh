#!/bin/bash

# In order to concat multiple video files, need to export this temp file. 
# I really dont know why, it just works. Something to do with codecs.

# $1 - your initial mp4 file, $2 - your output .ts file.
ffmpeg -i $1 -c copy -bsf:v h264_mp4toannexb -f mpegts $2
