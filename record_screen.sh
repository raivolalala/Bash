# !/bin/sh
# Replace $1 with your desired output file name.
ffmpeg -y -f alsa -i default \
-f x11grab -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -r 25 \
-i :0.0 -f video4linux2 \
-i /dev/video0 -filter_complex '[2:v]scale=380:-1[cam];[1:v][cam]overlay=W-w-8:H-h-8:x=990:y=0' \
-c:a mp3 \
-qscale 0 $1 
