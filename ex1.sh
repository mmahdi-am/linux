#!/usr/bin/env bash

for i in {0..2}
do
	read -p "Enter number:" input
	if [[ input -eq 10 ]]
	then	
		echo "equal"
	elif [[ input -lt 10 ]]
	then
		echo "smaller"
	else	
		echo "larger"
	fi	
done

