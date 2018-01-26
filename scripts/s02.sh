echo Introduce un número
read NUM1
echo Introduce otro número
read NUM2
if [ $NUM1 -gt $NUM2 ]
then
	echo $NUM1 es mayor que $NUM2
elif [ $NUM1 -lt $NUM2 ]
then
	echo $NUM1 es menor que $NUM2
else
	echo $NUM1 y $NUM2 son iguales
fi
