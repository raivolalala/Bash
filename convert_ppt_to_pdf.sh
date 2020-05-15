#!/bin/sh

# Change .pptx to .ppt if needed
libreoffice --headless --invisible --convert-to pdf *.pptx
