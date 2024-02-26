#!/usr/bin/env bash
#every day cron job
#crontab -e
# 0 8 * * * ~/exercises/ex5.sh

res=$(cat /etc/passwd | cut -d':' -f1,3)
today=$(date '+%y_%m_%d_%H%M%S')
echo $res  >> "./passwd_fields_${today}.txt"

old_backup_files=$(find ~ -name "passwd_fields_*" -type f -mtime +2)
for file in $old_backup_files
do
	
	rm -rfv $file	
done
