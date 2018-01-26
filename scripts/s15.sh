CONT=1
CONT2=2
if [ $# -eq 0 ]
then
	echo "No has introducido parámetros"
	exit 1
fi
while
  [ $# -gt 0 ]
do
	if
		[ $# -gt 1 ]
	then
	PAR=$1
	SIG=$2
	echo Parametro $CONT y Parametro $CONT2: $PAR y $SIG
	CONT=`expr $CONT + 2 `
	CONT2=`expr $CONT + 1 `
	shift 2
else
	PAR=$1
	echo Parametro $CONT: $PAR
	shift
fi
done
exit 0
