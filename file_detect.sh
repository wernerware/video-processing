#!/usr/bin/env bash
set -x

fswatch -1 "/Volumes/MEDIA" | xargs ./copy.sh