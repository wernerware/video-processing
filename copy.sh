#!/usr/bin/env bash
set -x

toDir=`osascript -e 'tell app (path to frontmost application as Unicode text) to set new_file to POSIX path of (choose folder with prompt "Select A Folder")'  2> /dev/null`

echo $toDir
mkdir /tmp/cfr_convert
tmpDir=/tmp/cfr_convert/$(date +%s%N)
mkdir $tmpDir
cp /Volumes/MEDIA/* $tmpDir || { echo "FAILED TO COPY"; exit 1; }
rm /Volumes/MEDIA/* || { echo "FAILED TO DELETE FILES"; exit 1; }
diskutil unmount /Volumes/MEDIA
./convert_to_cfr.sh $tmpDir