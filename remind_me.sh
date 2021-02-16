#!/bin/bash

#get the lines
date=$(vnstat -d 1 --style 0 | sed -n 6p | awk '{print $1}' )
total=$(vnstat -d 1 --style 0 | sed -n 6p | awk '{print $2, $3 }')

output="Date:${date} Usage:${total}"
notify-send "$output"
