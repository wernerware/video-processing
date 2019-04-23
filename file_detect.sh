#!/usr/bin/env bash
set -x

folderName="wernerware_transfer_and_crunch"
fswatch -0 --event Created "/Volumes/MEDIA" | xargs -0 -n 1 -I {} ~/${folderName}/copy.sh