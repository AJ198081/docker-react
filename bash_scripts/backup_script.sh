#!/usr/bin/bash

# $(command) - Command Substitution
# ${parameter} - Parameter Substitution
# $((arithmetic)) - Arithmetic Substitution
# Description: backup files in PWD

NOW_DATE=$(date +%d-%m-%Y_%H-%M-%S)

echo "Hello, ${USER^}, time now is ${NOW_DATE}"

FILE_NAME=my_backup_"$NOW_DATE".tar.gz

echo "Files in the directory that will be 'zipped': "

ls -Alh

echo "Archiving files under name $FILE_NAME"

tar -czvf "$FILE_NAME" "$PWD"/* 2>/dev/null

chmod 744 "$FILE_NAME"

echo "$FILE_NAME created, and permissions changed. Exiting....."

exit 0