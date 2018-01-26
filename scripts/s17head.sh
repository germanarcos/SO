datos=$!
N=`cat $datos | wc -l`
N=`expr $N -2`
head -$N $1 >NuevoFichero
