while
	[ $# -gt 0 ]
do
find / -name $1 >$HOME/salida 2>/dev/null
if
	[ -s $HOME/salida ]
then
	echo $1 "Encontrado" `cat $HOME/salida | wc -l` "veces"
else
	echo $1 "No ha sido encontrado"
fi
shift
done
