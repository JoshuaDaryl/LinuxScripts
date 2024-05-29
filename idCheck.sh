#!/bin/bash

#THIS SCRIPT ACCEPTS A USERNAME INPUT AND DISPLAYS THE UID OF THAT USERNAME AS WELL AS THE GROUPS IT BELONGS TO


read -p "Please enter your username: " newUsername
echo
findUID=$(id -u $newUsername)
findGroups=$(id -Gn $newUsername)

echo "Your UID Is..."
echo "--------------"
echo -e "$findUID\n\n"
echo "You belong to the following groups..."
echo "-------------------------------------"
echo -e "$findGroups\n"

