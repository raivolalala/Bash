#!/bin/bash
# Bites īsziņu centra nr. +37125850115
curl -X POST https://textbelt.com/text \
       --data-urlencode phone='' \
       --data-urlencode message='' \
       -d key=textbelt
