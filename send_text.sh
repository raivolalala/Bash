#!/bin/bash

# Bites īsziņu centra nr. +37125850115

# Long string var definition below.
# Note the long string var usage further on - in double quotes.
# Double quotes remove newline char after backslash.

nmbr='+37128633146'
msg='atmet whatsappā screennu tagad \
	jo šitā sms neietilpst \
	vienā jobnutā rindinā'

curl -X POST https://textbelt.com/text \
       --data-urlencode phone=$nmbr \
       --data-urlencode message="$msg" \
       -d key=textbelt
