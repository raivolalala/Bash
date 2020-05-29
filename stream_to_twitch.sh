#!/bin/bash

ffmpeg -f x11grab -video_size 1366x768 \
       	-framerate 24 -i $DISPLAY -f alsa -i default \
	-af acompressor=threshold=0.089:ratio=9:attack=200:release=1000 \
	-vf scale=1280x720 -c:v h264 -g 24 -b:v 2M -preset ultrafast \
	-c:a aac -pix_fmt yuv420p \
	out.mkv
#	-f flv "rtmp://live-lax.twitch.tv/app/XXXXXXXXXXXXXX"
