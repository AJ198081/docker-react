#!/usr/bin/bash

echo "........ Copying files from local to container........"

SOURCE_FOLDER=/root/bash/
DESTINATION_FOLDER=/root/scripts/

rm -r "${DESTINATION_FOLDER}"

mkdir "${DESTINATION_FOLDER}"

cp -R ${SOURCE_FOLDER}* ${DESTINATION_FOLDER}

ls -Alh ${DESTINATION_FOLDER}

echo "........ Copied from local to container........"


