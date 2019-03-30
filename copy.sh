#!/usr/bin/env bash

export toDir=`osascript -e 'tell app (path to frontmost application as Unicode text) to set new_file to POSIX path of (choose folder with prompt "Select A Folder")'  2> /dev/null`

echo $toDir
cp $0 $toDir