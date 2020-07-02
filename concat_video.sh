#!/bin/bash

ffmpeg -i input1.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts tmp1.ts
ffmpeg -i input2.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts tmp2.ts
ffmpeg -i "concat:tmp1.ts|tmp2.ts" -c copy -bsf:a aac_adtstoasc out.mp4
