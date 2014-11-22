#!/bin/bash
#	INFO-F-201 											Projet "shell scripting"
#	Author: Arabella BRAYER 000385657

function display()
{
	for NODE in "$1"/*; do
        echo "|--${NODE##*/}" 
	if [[ -d $NODE ]]; then
		echo -e "|  \c"
		display "$NODE"
	fi
done
}

echo "$PWD"
display "$PWD"

exit 0