if
		[ $1 = d -o $1 = f ]
	then
		TIPO="-type $1"
	elif	[ $1 = "t" ]
	then
		TIPO=""
	else
		echo Primer parametro incorrecto, saliendo
		exit 1
fi
shift
	while [ $# -gt 0 ]
do

	find / $TIPO -name $1 >$HOME/salida 2>/dev/null	
	if
		[ -s $HOME/salida ]
	then
		echo $1 "Encontrado" `cat $HOME/salida | wc -l` "veces"
	else
		echo $1 "No ha sido encontrado"
fi
shift
done
