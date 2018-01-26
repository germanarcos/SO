#!/bin/sh

echo Introduce un número
read NUM1
echo Introduce otro número
read NUM2
#num='^-?[0-9]+([.][0-9]+)?$'
num='^?[0-9]?$'
if ! [[ $NUM1 =~ $num ]]
then
	echo $NUM1 no es un numero
else
	if ! [[ $NUM2 =~ $num ]]
	then
		echo $NUM2 no es un numero
	else
		if [ $NUM1 -gt $NUM2 ]
		then
			echo $NUM1 es mayor que $NUM2
		elif [ $NUM1 -lt $NUM2 ]
		then
			echo $NUM1 es menor que $NUM2
		else
			echo $NUM1 y $NUM2 son iguales
		fi
	fi
fi
