#!/usr/bin/bash

SCRIPT_NAME="$(basename ${0})"

echo ".........Starting script [$SCRIPT_NAME].........."
# PS1 is the shell prompt
# PS3 is the 'select' command prompt
PS3="Select the month you want are testing for: "
select date in mon tue wed thu fri sat sun;
do
    echo "You have selected ${date:-"Illegal argument"}"
    break;
done

echo ".........Ending script [$SCRIPT_NAME].........."