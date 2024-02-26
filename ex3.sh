#!/usr/bin/env bash
while getopts ":i:u:p:" o; do
	
    case "${o}" in
        i)
             ip=${OPTARG}
            ;;
        u)
             user=${OPTARG}
            ;;
        p)
	     password=${OPTARG}
	    ;;
	?)
            echo "Invalid option - ${OPTARG}" >&2
            ;;
    esac
done


if ping -c 2 $ip > /dev/null 2>&1 
then
	echo "server is reachable"
	sshpass -p "${password}" scp /etc/passwd "${user}@${ip}":/home/mahdi2
	echo "done"
else
	echo "server is not reachable"

fi
