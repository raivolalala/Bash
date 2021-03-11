#!/bin/bash
# $1 - full path to your existing picture file; 
# $2 - full path to your existing audio file; 
ffmpeg -loop 1 -i $1 -i $2 -c:v libx264 -tune stillimage \
	-c:a copy -b:a 192k -pix_fmt yuv420p -shortest out.mp4
