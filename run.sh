#!/bin/bash

# make Temp directory for downloaded files
mkdir Temp

# calculate the previous file to download
MONTH=$(date -v-2m +%m)
YEAR=$(date -v-2m +%y)
SMOGON_STATS="https://www.smogon.com/stats/20$YEAR-$MONTH/gen7ou-0.txt"

# download the stats file
curl $SMOGON_STATS -o Temp/gen7ou-0.txt
