#!/bin/bash

# Change .pptx to .ppt if needed
libreoffice --headless --invisible --convert-to pptx *.pdf
