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
	ps -e | grep " $PROCESO$" > /dev/null
	if
		[ $? -eq 0 ]
	then
		LINEA=` ps -le |grep " $PROCESO$" | tail -1`
		PID=`ps -le | grep " $PROCESO$" | tail -1 | tr -s " " | cut -d" " -f4`
		PPADRE=`echo $LINEA | tr -s " " | cut -d" " -f5`
		NPADRE=`ps -p $PPADRE | tail -1 | sed 's/^ *//' | tr -s " " | cut -d" " -f4`

		echo Proceso $PROCESO
		echo PID $PID PPID $PPADRE $NPADRE
	else
		echo El proceso $PROCESO no existe
	fi
	shift
done
exit 0
