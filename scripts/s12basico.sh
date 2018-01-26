if
	[ $# -ne 1 ]
then
	echo ERROR
	exit 1
fi
if
	[ -s $1 ]
then
	echo Existe
else
	echo No existe
fi
