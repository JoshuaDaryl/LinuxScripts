#!/bin/bash

#USER INPUTS DIRECTORY NAME, RETURNS INFO OF DIRECTORY BASED ON INPUT
#INFO IS DIR LAST MODIFIED, No OF FILES IN DIR, SMALLEST AND BIGGEST FILES IN DIR

read -p "Please enter the name of a directory you'd like info on: " userDir

directoryPath=$(find . -type d -name "$userDir")

lastMod=$(stat -c "%y" "$directoryPath" | awk -F '.' '{print $1}')
numFiles=$(find "$directoryPath" -type f | wc -l)
smallFile=$(find "$directoryPath" -type f -printf "%s %f\n" | sort -n | head -n 1 | awk '{print $2}')
bigFile=$(find "$directoryPath" -type f -printf "%s %f\n" | sort -nr | head -n 1 | awk '{print $2}')



echo -e "Date last modified: $lastMod \nNumber of files: $numFiles \nSmallest file: $smallFile \nBiggest file: $bigFile "

