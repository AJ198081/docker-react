#!/usr/bin/bash

SCRIPT_NAME="$(basename ${0})"

echo ".......Starting Script ${SCRIPT_NAME}........"

a=2
b=3

if [ $a -gt $b ]; then
    echo "Yes ${a} is greater than ${b}"
fi

echo ".......Ending Script ${SCRIPT_NAME}........"