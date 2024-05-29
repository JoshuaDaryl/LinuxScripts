#!/bin/bash

#THIS SCRIPT FINDS UN AND UID OF A FILE, IT ALSO DELETES FILES NOW OWNED BY USER OR ROOT
#I COULD NOT FIGURE A FOR LOOP FOR THE UN/UID PART OF THE SCRIPT


echo "USER ID AND USERNAMES" > "userIdAndNames.txt"
echo "---------------------" >> "userIdAndNames.txt"

echo "Username:" >> "userIdAndNames.txt"
ls -l relevantFile | awk '{print $3}' >> "userIdAndNames.txt"
echo "UID:" >> "userIdAndNames.txt"
ls -n relevantFile | awk '{print $3}' >> "userIdAndNames.txt"
echo "---------------------" >> "userIdAndNames.txt"



find ~/ -type f ! -user $(whoami) ! -user root -delete
