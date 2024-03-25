#!/usr/bin/bash

# read each line from first positional argument and then make a directory with the name
while read -r line ; do
    mkdir "${line}"
done < "${1}"