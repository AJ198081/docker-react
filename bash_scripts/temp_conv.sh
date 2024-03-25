#!/usr/bin/bash

# getopts - get options - applicable options here are 'f' and 'c'
# : following the option -> takes argument, bash saves argument in ${OPTARG} variable
while getopts "f:c:" opt; do
    case "${opt}" in
    c) result=$(echo "scale=2; ($OPTARG * (9/5)) + 32" | bc);;
    f) result=$(echo "scale=2; ($OPTARG -32) * (5/9)" | bc) ;;
#  ? is a catch one option, \ is escape character
    \?) result=echo "Something went wrong, please try again" ;;
    esac
done

echo "${OPTARG} ${opt} = ${result}"
