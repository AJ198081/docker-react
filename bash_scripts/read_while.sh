#!/usr/bin/bash

# reads each line of the file in variable 'line'
while read -r line; do
echo "${line}"

# redirect the file from first input argument for reading
#done < "${1}"

# < <() is called process substitution
done < <(ls "${HOME}")