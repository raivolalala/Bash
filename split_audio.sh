#!/bin/bash

file1="/home/raivo/Audio/Music/The Midnight/the_midnight-monsters_tracklist"
file2="/home/raivo/Audio/Music/The Midnight/The Midnight - Monsters (2020).mp3"

sed -n 1p "$file1" | head -c 8
