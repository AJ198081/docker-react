#!/usr/bin/bash

total_seconds=0

while getopts "m:s:" opt; do
  case "${opt}" in
  m) total_seconds=$(( "${total_seconds}" + "${OPTARG}" * 60 )) ;;
  s) total_seconds=$(( "${total_seconds}" + "${OPTARG}" )) ;;
  esac
done

echo " You have selected a timer of ${total_seconds} seconds"

while [ ${total_seconds} -gt 0 ]; do
    echo "${total_seconds}"
    total_seconds=$(("${total_seconds}" - 1))
    sleep 1s
done

echo "Time's up!!"
