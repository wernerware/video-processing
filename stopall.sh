#!/usr/bin/env bash

folderName="wernerware_transfer_and_crunch"
runningPids=`pgrep -f $folderName`
echo "Killing PID $pid"
kill ${runningPids}
