#!/bin/bash

[ "$(stat -c %y ~/.cache/corona 2>/dev/null| cut -d ' ' -f1)" != \
	"$(date '+%Y-%m-%d')" ] &&
       curl -s https://corona-stats.online > ~/.cache/corona	
grep "Latvia" ~/.cache/corona |
	sed "s/\s*//g; s/║//g ; s/│/;/g ; s/▲//g" |
	cut -d';' -f2 -f3 -f4 &&
	rm ~/.cache/corona
