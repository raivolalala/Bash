#!/bin/bash

#ext=$1
#FILE=$1;
#if [ !-z "$FILE" ] ; then
#	ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";
#else
#	for FILE in *.webm; do
#		echo -e "Processing file '\e[32m$FILE\e[0m'";
#		ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";
#	done;
#fi
#rm *.webm

ext=$1
for FILE in *.$1; do
	echo -e "Processing file '\e[32m$FILE\e[0m'";
	ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.$1}.mp3";
done;
rm *.$1
