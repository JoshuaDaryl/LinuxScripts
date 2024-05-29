#!/bin/bash

#THIS SCRIPT ACCEPTS A USER INPUT, OUTPUTS WHETHER THAT NUMBER IS EVEN OR NOT TO FILE3, IT THEN ASKS THE USER IF THEY WANT TO KEEP
#OR DELETE THAT FILE, IF KEEPING THE FILE WILL BE MOVED TO HOME DIRECTORY WITH A CHANGED NAME



function userNumber(){

	read -p "Please enter a number: " newNumber
	
	if ((newNumber % 2 == 0)); then
        	echo "$newNumber is even" >> ~/WAT_[joshuahalladey]/file3
    	else
        	echo "$newNumber is odd" >> ~/WAT_[joshuahalladey]/file3
    	fi
	
	
	
	read -p "Do you want to save the number to a file?(y/n): " fileSave
	
	if [ "$fileSave" == "n" ]; then
		rm ~/WAT_[joshuahalladey]/file3
		
	else
		mv ~/WAT_[joshuahalladey]/file3 ~/changedFileName
	fi
}
userNumber	
	 
