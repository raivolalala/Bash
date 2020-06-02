#!/bin/bash

# Used for cutting up videos into smaller pieces for further editing.
# $1 - input video, $2 - output video

ffmpeg -ss 2 -i $1 -c copy -t 1 $2

