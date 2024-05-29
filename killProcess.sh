#!/bin/bash


#THIS IS A SCRIPT THAT DISPLAYS CURRENT USER'S PROCESSES AND ALLOWS USER TO ENTER A PID NUMBER TO KILL ITS PROCESS"
#YOU CAN RUN 'SLEEP 360 &' AS A PLACEHOLDER PROCESS TO KILL


echo "Current users processes"
echo -e "-----------------------\n"
ps -u



function  stopTheProcess(){
	echo -e "\nPlease enter the PID of the process you would like to kill: "
	read processPid

	if ps -p "$processPid" > /dev/null; then
		
		kill "$processPid"
		echo "$processPid killed"
		exit

	else
		echo "$processPid is not a valid PID number"
		stopTheProcess
	fi
}

stopTheProcess
