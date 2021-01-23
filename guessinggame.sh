#!/bin/bash

function dircount {
	count=`ls | wc -l`
}
	
function fileguess {
	while [[ $guess != $count ]];do
		read guess 
		if [[ $guess < $count ]]; then
		echo "Less than the actual no. of files"
		elif [[ $guess > $count ]]; then
		echo "More than the actual no. of files"
		fi
	done
	echo "Congratulations..right guess"
}
dircount
echo "Guess the no. of files in the current directory!"
guess=0
fileguess
