#!/bin/bash
source questao1.sh
cat arq.txt | tr  '\n' ' ' >> ex.txt
colum=$(awk -F " " '{print NF}' ex.txt)
declare -A array
key=0
field=1
for ((i=0; i<$colum;i++)); do
	aux=$(cut -d ' ' -f${field} ex.txt) 
	array[$i]=$aux
	key=$(($key+1))
	field=$(($field+1))
done < ex.txt
rm ex.txt
ma=${array[0]}
me=${array[0]}
for i in ${array[*]}; do
	if [[ $i -lt $me ]]; then
		me=$i
	fi

done
for i in ${array[*]}; do
	if [[ $i -gt $ma ]]; then
		ma=$i
	fi

done

echo "o maior é $(maior $me $ma)"
echo "o menor é $(menor $me $ma)"
