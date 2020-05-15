ffmpeg -f alsa -i pulse -f x11grab -s 1366x768 \
	-r 30 -i :0.0+0,0 \
	-vf "movie=/dev/video0:f=video4linux2, scale=240:-1, fps, setpts=PTS-STARTPTS [movie]; [in][movie] overlay=main_w-overlay_w-2:main_h-overlay_h-2 [out]"\
       	-vcodec libx264 -crf 20 -preset veryfast -minrate 150k \
	-maxrate 500k -s 960x540 \
#	-acodec libfaac \
	-acodec aac \
	-ar 44100 -ab 96000 -threads 0 \
	-f flv - | tee name.flv | ffmpeg -i - \
	-codec copy -f flv \
	-metadata streamName=livestream tcp://x.x.y.y:1234 \
	out.mkv
