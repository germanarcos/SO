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
ps -lp $PROCESO > /dev/null
if
	[ $? -eq 0 ]
then
LINEA=` ps -lp $PROCESO | tail -1`
PPADRE=`echo $LINEA | tr -s " " | cut -d" " -f5`
NPADRE=`ps -p $PPADRE | tail -1 | sed 's/^ *//' | tr -s " " | cut -d" " -f4`

echo el padre del proceso $PROCESO es $PPADRE $NPADRE
else
	echo El proceso $PROCESO no existe
fi
shift
done
exit 0
