#!/bin/bash

#TRADITIONAL FIZZBUZZ SCRIPT


read -p "Please enter a number: " userNum

fizzArray=()


for ((i=1; i<=$userNum; i++)); do
	
	fizzArray+=("$i")
done



for item in "${fizzArray[@]}"; do

	if ! ((item%15)); then
        	echo "FizzBuzz!"

        elif ! ((item%3)); then
        	echo "Fizz!"

        elif ! ((item%5)); then
        	echo "Buzz!"
	
	else
		echo "$item"

        fi
done
