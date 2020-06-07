#!/bin/bash

# Used for cutting up videos into smaller pieces for further editing.
# $1 - input video

ffmpeg -ss 2 -i $1 -c copy -t 1 out.mp4

