#!/bin/bash
#	INFO-F-201 											Projet "shell scripting"
#	Author: Arabella BRAYER 000385657

# function test()
# {
# 	echo -e "$1\c"
# 	echo "$2"
# }

function display()
{
	for NODE in "$1"/*; do
    echo -e "$2|--${NODE##*/}" 
	if [[ -d $NODE ]]; then
		display "$NODE" "$2|  "
	fi
done
}

echo "$PWD"
display $PWD ""

# test "|---" "blabla"

exit 0