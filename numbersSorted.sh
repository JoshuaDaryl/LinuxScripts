#!/bin/bash

#THIS SCRIPT ACCEPTS USER INPUTTED NUMBERS, PUTS THEM INTO AN ARRAY, SORTS THE ARRAY, AND THEN DISPLAYS THE NUMBERS SORTED ASCENDING

read -a numberList -p "Please enter your numbers, a space between a number starts a new number, press enter to save numbers: "

IFS=$'\n' sortedNums=($(sort -n <<<"${numberList[*]}"))
unset IFS


for num in "${sortedNums[@]}"; do
  echo "$num"
done
