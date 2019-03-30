#!/usr/bin/env bash

# Placeholder for the fswatch
export fileChanged=`osascript -e 'tell app (path to frontmost application as Unicode text) to set new_file to POSIX path of (choose file with prompt "fswatch placeholder")'  2> /dev/null`

./copy.sh fileChanged;