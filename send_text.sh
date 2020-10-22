#!/bin/bash

# Bites īsziņu centra nr. +37125850115

# Long string var definition below.
# Note the long string var usage further on - in double quotes.
# Double quotes on line 16 remove newline char after backslash.

nmbr=''
msg='test test test  \
	test test test  \
	test test test'

curl -X POST https://textbelt.com/text \
       --data-urlencode phone=$nmbr \
       --data-urlencode message="$msg" \
       -d key=textbelt
