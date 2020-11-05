#!/bin/bash

now=$(date +"%Y-%m-%d")
folder="home/raivo/Documents/COVID19_data/"
# Listen, I dunno why I declared a var, and on the
# 24th line it's hardcoded. It doesn't work and I am too lazy to
# find out, why.

if [ $(date +%H) -lt 12 ]; then
	echo Not the right time for script.
	else
		[ "$(stat -c %y ~/.cache/corona_$now 2>/dev/null | cut -d ' ' -f1)" != \
			"$(date '+%Y-%m-%d')" ] &&
		       curl -s https://corona-stats.online > ~/.cache/corona_$now	
		grep "Latvia" ~/.cache/corona_$now |
			sed "s/\s*//g; s/║//g ; s/│/;/g ; s/▲//g" |
			awk -F';' '{print $2"\n"\
		       	"Total cases: "$3"\n"\ 
			"New cases: "$4"\n"\
		       	"Deaths: "$5"\n"\
		       	"New deaths: "$6"\n"\
		       	"Recovered: "$7"\n"\
		       	"Active cases: "$8"\n"}' | 
			tee ~/Documents/COVID19_data/corona_$now &&
		rm ~/.cache/corona_$now
fi
