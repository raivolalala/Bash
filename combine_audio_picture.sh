#!/bin/sh
# $1 - full path to your existing picture file; 
# $2 - full path to your existing audio file; 
# $3 - full path to your new output video file.
ffmpeg -loop 1 -i $1 -i $2 -c:v libx264 -tune stillimage \
	-c:a aac -b:a 192k -pix_fmt yuv420p -shortest $3
