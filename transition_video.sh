#!/bin/bash

ffmpeg -i $1 -i $2 -f lavfi -i color=black -filter_complex \
"[0:v]format=pix_fmts=yuva420p,fade=t=out:st=24:d=2:alpha=1,setpts=PTS-STARTPTS[va0];\
[1:v]format=pix_fmts=yuva420p,fade=t=in:st=0:d=2:alpha=1,setpts=PTS-STARTPTS+24/TB[va1];\
[2:v]scale=1366x768,trim=duration=30[over];\
[over][va0]overlay[over1];\
[over1][va1]overlay=format=yuv420[outv]" \
-vcodec libx264 -map [outv] $3
