#!/usr/bin/bash

readarray -t urls < urls.txt

for url in "${urls[@]}" ; do
    webname=$(echo "${url}" | cut -d "." -f 2)

    curl --request GET -sL --head \
         --url "${url}"\
         --output "${webname}.txt"
done