#!/usr/bin/bash

case "${1}" in
  [0-9]) echo "You entered a single digit number" ;;
  [0-9][0-9]) echo "You entered a two digit number" ;;
  [0-9][0-9][0-9]) echo "You entered a three digit number" ;;
  *) echo "You shall enter no more than 3 digits";;
esac