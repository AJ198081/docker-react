#!/usr/bin/bash

read -r -p "Enter your number: " number
echo

while [ "${number}" -gt 10 ]; do
  echo "Well done $number"
  read -r -p "Enter your number: " number
done

echo "You entered ${number} which is less than 10, good bye"
