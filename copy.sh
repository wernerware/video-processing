#!/usr/bin/env bash

export toDir=`osascript -e 'tell app (path to frontmost application as Unicode text) to set new_file to POSIX path of (choose folder with prompt "Select A Folder")'  2> /dev/null`

echo $toDir
cp /Volumes/MEDIA/* $toDir || { echo "FAILED TO COPY"; exit 1; }
rm /Volumes/MEDIA/* || { echo "FAILED TO DELETE FILES"; exit 1; }
diskutil unmount /Volumes/MEDIA