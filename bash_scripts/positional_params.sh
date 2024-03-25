#!/usr/bin/bash

DEFAULT_IFS=' /t/n'

echo "${DEFAULT_IFS}"
# If $1 - positional parameter 1 is not set or missing, then use 'User'
echo "Hi ${3:-User}, located at $1 with username of $2"

# Get number of input arguments
echo "Number of arguments entered -> ${#} $#" $#

# Get the name of the script
SCRIPT_NAME="${0}"
echo "Script name -> ${SCRIPT_NAME}"

# $@ - get all command line arguments
echo "You have entered -> " && echo "${@}"

IFS=/
# $* and "${*}" has different meaning
echo "* within quotes ${*} - gives all command line variables with IFS separator"

echo "* without quotes " ${*} " - gives all command line arguments as it is, same as @ does"

IFS=${DEFAULT_IFS}

echo "* within quotes ${*} - gives all command line variables with IFS separator, which is now set to ${DEFAULT_IFS}"

OPERANDS='6 + 3 + 1'

echo "Results is $((OPERANDS))"