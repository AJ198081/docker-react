#!/usr/bin/bash

readarray -t files < ${1}

for file in "${files[@]}" ; do

  if [ -f "${file}" ]; then
      echo "${file} already exists deleting now.."
      rm -f "${file}"
      else
        touch "${file}"
        echo "${file} has been created"
  fi

done

readarray -t urls < ./urls.txt

for url in "${urls[@]}" ; do
  host_name="$(echo "${url}" | cut -d "." -f 2).txt"

  if [ -f "${host_name}" ]; then
      echo "${host_name} exists, deleting now.."
      rm -f ${host_name}
  fi

done