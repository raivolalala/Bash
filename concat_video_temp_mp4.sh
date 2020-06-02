#!/bin/bash

# Final script when needed to concat temporary .ts files into one single .mp4.
# $1 - first .ts file, $2 - second .ts file; $3 - final output .mp4 file. 
# Add more with | and create more vars if needed.

ffmpeg -i "concat:$1|$2" -c copy -bsf:a aac_adtstoasc $3
