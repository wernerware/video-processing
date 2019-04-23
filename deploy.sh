#!/usr/bin/env bash

./stopall.sh

folderName="wernerware_transfer_and_crunch"
rm -r ~/${folderName}
mkdir ~/${folderName}
mkdir ~/${folderName}/logs
cp ./convert_to_cfr.sh ~/${folderName}
cp ./copy.sh ~/${folderName}
cp ./file_detect.sh ~/${folderName}
cp ./runner.sh ~/${folderName}
cp ./stopall.sh ~/${folderName}

chmod +x ~/${folderName}/*.sh

sh ~/${folderName}/runner.sh