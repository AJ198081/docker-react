#!/usr/bin/bash

# if number 1 & 2 are equal then print 'is equal'
if [ "${1}" -eq "${2}" ]; then
    echo "${1} and ${2} are equal"

# else if number 1 greater than 2 then print 'is greater than'
  elif [ "${1}" -gt "${2}" ]; then
      echo "${1} is greater than ${2}"

# else print 'is less than'
  else
    echo "${1} is less than ${2}"
fi


