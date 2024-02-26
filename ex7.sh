#!/usr/bin/env bash
file=$1
today=$(date "+%y_%m_%d")
host=$(hostname)
host=${host//-/_}

while IFS= read -r ip
do
	ping -c 2  $ip >> "${host}_${today}.log" 2>&1

done < $file
