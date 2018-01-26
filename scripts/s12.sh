find / -name $1 >$HOME/salida 2>/dev/null
if
	[ -s $HOME/salida ]
then
	echo $1 "Encontrado"
else
	echo "No ha sido encontrado"
fi
if
	[ -s $HOME/salida ]
then
	echo `cat $HOME/salida | wc -l`
fi
