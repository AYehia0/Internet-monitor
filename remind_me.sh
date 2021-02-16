#!/bin/bash

#getting the path, another way ,, instead of using absolute path
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

#cd "$parent_path"

#get the lines
date=$(vnstat -d 1 --style 0 | sed -n 6p | awk '{print $1}' )
total=$(vnstat -d 1 --style 0 | sed -n 6p | awk '{print $2, $3 }')

output="Date:${date} Usage:${total}"

#saving to a file, using absolute path 
echo $output >> ~/Desktop/github/Internet-monitor/usage.txt

notify-send "$output"


