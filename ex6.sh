#!/usr/bin/env bash
today=$(date "+%y_%m_%d")
echo $today
tar -czvf "/home/mahdi/home_backup_${today}"  ~/*






