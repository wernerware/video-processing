#!/usr/bin/env bash
set -x

echo "PROCESSING $0"
for file in $1/*
do
    videoBaseName=`basename $file`
    echo $file
    HandBrakeCLI -i $file -o "$2/cfr_${videoBaseName}" --cfr
done