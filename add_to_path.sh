#!/bin/sh

IFS=:
chk=0

if [ $1 ]
then
	for d in ${PATH} ; do
		if [ -w $d ]; then
			chk=1
			cp "$1" "$d"
			if [ $? = 0 ]; then
				echo "\n '$1' copied in '$d' \n"
			else
			    echo "Failed to copy!"
			fi
			break
		fi
	done
	if [ $chk = 0 ]; then
		echo "You have no permissions anywhere!"
	fi
else
	echo "Missing a file to copy!"
fi
