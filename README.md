# Wernerware  Video Processing
This is a scripting project created to assist me in transferring video files off of a usb drive and processing them using Handbrake.  It does not work yet because it is a work in progress.  Furthermore, for the time being, it is designed to fit my own situation rather handly and zero effort has been taken to generalize the technologies or platforms used.

## Video
This project is the subject of a video on the Wernerware Software video channel on YouTube.  A link will be posted as soon as it is available!

## Sources
Applescript file chooser: http://oranj.io/blog/Open-File-Dialog-from-the-Shell

Handbrake CLI Download: https://handbrake.fr/downloads2.php

fswatch: https://github.com/emcrisostomo/fswatch

## Technologies
### Programs
1. Handbrake CLI
2. Applescript (using osascript at the command line)
3. fswatch
4. Bash scripting
### OS
1. Mac OS Mojave

## Handbrake CLI command example used in the video (not integrated yet)
    HandBrakeCLI -i Encode_1080P_26_8.mp4 -o test_out.mp4 --cfr