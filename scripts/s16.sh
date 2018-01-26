while [ $# -gt 0 ]
do
	PAR=$1
	ps -e | grep " $PAR$" | cut -c1-6
	shift
done
