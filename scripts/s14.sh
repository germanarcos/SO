CONT=1
if [ $# -eq 0 ]
then
	echo "No has introducido parámetros"
	exit 1
fi
while
  [ $# -gt 0 ]
do
	PAR=$1
	echo Parametro $`expr $CONT`: $PAR
	CONT=`expr $CONT + 1`
	shift
done
exit 0
