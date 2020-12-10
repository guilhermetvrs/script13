#!/bin/bash
function maior {
	if [ $1 -gt $2 ] ; then
		echo $1
	elif [ $1 -eq $2 ]; then
		echo "tudo igual meu chapa."
	else
		echo $2
	fi
}

function menor {
	if [ $1 -lt $2 ] ; then
		echo $1
	elif [ $1 -eq $2 ]; then
		echo "tudo  igual meu chapa."
	else
		echo $2
	fi
}

#read -p "Digite os números: " a b
#ma=$(maior $a $b)
#echo $ma
#read -p "Digite os números: " a b
#me=$(menor $a $b)
#echo $me
