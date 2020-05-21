#!/bin/sh

[ "$(stat -c %y ~/.cache/corona 2>/dev/null| cut -d ' ' -f1)" != \
	"$(date '+%Y-%m-%d')" ] &&
       curl -s https://corona-stats.online > ~/.cache/corona	
grep "Latvia" ~/.cache/corona |
	sed "s/\s*//g; s/║//g ; s/│/;/g ; s/▲//g" |
	awk -F';' '{print $2"\n" "Total cases: "$3"\n" "New cases: "$4"\n" "Deaths: "$5"\n" "New deaths: "$6"\n" "Recovered: "$7"\n" "Active cases: "$8"\n"}' && rm ~/.cache/corona
