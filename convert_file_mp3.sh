#!/bin/bash

ext=$1
for FILE in *.$1; do
	echo -e "Processing file '\e[32m$FILE\e[0m'";
	ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.$1}.mp3";
done;
rm *.$1
