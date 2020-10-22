#!/bin/bash

# Note that vars below are hard-coded for my own specs.
# Don't be lazy as I am, think how to improve it.
# And just fucking don't be a bitch, I am still learning all this shit.

streaming() {
	INRES="1366x768" # input resolution
	OUTRES="1366x768" # output resolution
	FPS="15" # target FPS
	GOP="30" # i-frame interval, should be double of FPS, 
	GOPMIN="15" # min i-frame interval, should be equal to fps, 
	THREADS="2" # max 6
	CBR="1000k" # constant bitrate (should be between 1000k - 3000k)
	QUALITY="ultrafast"  # one of the many FFMPEG preset
	AUDIO_RATE="44100"
	#STREAM_KEY="$1"
	STREAM_KEY=$(cat ~/Documents/stream_key)
	SERVER="live-sjc" # twitch server in California, see http://bashtech.net/twitch/ingest.php to change 
     
	ffmpeg -f x11grab -s "$INRES" -r "$FPS" -i :0.0 -f alsa -i pulse -f flv -ac 2 -ar $AUDIO_RATE \
		-vcodec libx264 -g $GOP -keyint_min $GOPMIN -b:v $CBR -minrate $CBR -maxrate $CBR -pix_fmt yuv420p\
		-s $OUTRES -preset $QUALITY -tune film -acodec libmp3lame -threads $THREADS -strict normal \
		-bufsize $CBR "rtmp://$SERVER.twitch.tv/app/$STREAM_KEY" \
		test_out.mp4
}
streaming
