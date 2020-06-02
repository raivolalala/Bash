#!/bin/bash

# $1 - mp4 file, $2 - mp3 file, $3 - your desired output.
ffmpeg -i $1 -i $2 -c copy -map 0:v:0 -map 1:a:0 -shortest $3

