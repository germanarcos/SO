if
	[ $# -eq 2 ]
then
	if
		[ $1 = d -o $1 = f ]
	then
		TIPO="-type $1"
	elif
		[ $1 = "t" ]
	then
		TIPO=""
	fi
		find / $TIPO -name $2 >$HOME/salida 2>/dev/null	
	if
		[ -s $HOME/salida ]
	then
		echo $2 "Encontrado" `cat $HOME/salida | wc -l` "veces"
	else
		echo $2 "No ha sido encontrado"
	fi
fi
