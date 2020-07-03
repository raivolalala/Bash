#!/bin/bash

# Vars - input mp4
ffmpeg -i $1 -c copy -bsf:v h264_mp4toannexb -f mpegts tmp1.ts
ffmpeg -i $2 -c copy -bsf:v h264_mp4toannexb -f mpegts tmp2.ts
ffmpeg -i "concat:tmp1.ts|tmp2.ts" -c copy -bsf:a aac_adtstoasc out_joined.mp4
rm tmp1.ts tmp2.ts
