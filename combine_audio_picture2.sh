#!/bin/bash
ffmpeg -loop 1 -y -i image8.jpg -i sound11.amr -shortest -acodec copy -vcodec mjpeg result.avi
