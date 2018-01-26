if
	[ $# -eq 0 ]
then
	echo "No has introducido parametros"
	exit 1
fi
while
	[ $# -gt 0 ]
do
	PROCESO=$1
	ps -el | grep " $PROCESO$" > misprocesos
	if
		[ -s misprocesos ]
	then
		echo Proceso $PROCESO
		while
	       		read LINEA
		do
			 
			PID=`echo $LINEA | tr -s " " | cut -d" " -f4`
			PPADRE=`echo $LINEA | tr -s " " | cut -d" " -f5`
			if
				[ $PPADRE -eq 0 ]
			then
				NPADRE="No tiene padre"
			else
				NPADRE=`ps -p $PPADRE | tail -1 | sed 's/^ *//' | tr -s " " | cut -d" " -f4`
			fi
			echo PID $PID PPID $PPADRE $NPADRE
		done < misprocesos
	else
		echo El proceso $PROCESO no existe
	fi
	shift
done
rm misprocesos
exit 0
