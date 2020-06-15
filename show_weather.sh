#!/bin/bash

weather='https://www.accuweather.com/akam/11/pixel_651fbf7e?a=dD0yMmY4NjRkZjM5OTk0MTc5MDRjYjViN2Y3ZmM5MWRkZDA1M2JhODMyJmpzPW9mZg=='
notify-send "Loading radar data..."
mpv --force-seekable=yes --loop-file=inf $weather
