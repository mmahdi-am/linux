#!/usr/bin/env bash
i=1
min=$number
max=$number
flag=0
while (( i < 20 ))
do

	read -p "Enter number ${i}:" number
	if (( flag == 0 ))
	then
		flag=1
		min=$number
		max=$number
		echo 'enter'
	fi

	if (( max < number ))
	then
		max=$number		
	fi
	if ((  number < min ))
	then
		min=$number
	fi
	((i++))
done 

echo "max=${max}"
echo "min=${min}"
