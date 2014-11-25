#!/bin/bash
#	INFO-F-201 											Projet "shell scripting"
#	Author: Arabella BRAYER 000385657

function display() # fonction récursive qui prend deux paramètres : $1 et $2
{
	for NODE in "$1"/*; do   # pour chaque NODE du répertoire courant
    if [ ! -L $NODE ]; then
    echo -e "$2|--${NODE##*/}"  # écrit le nom préfixé de $2
	fi
	if [ -d $NODE ] && [[ ! -L $NODE ]]; then		# -d si c'est un dossier : -L pour ignorer les link
		display "$NODE" "$2|  " # appel récursif de la fonction + "|   " 
	fi
done
}

echo "$PWD"		# écrit le répertoire courant avec le PATH complet
display $PWD "" # envoie deux variables. La deuxième est une chaîne vide à l'origine

exit 0