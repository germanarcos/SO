#!/bin/sh
#^Sin espacios
# Prueba con variables
echo Introduce un valor:
read VAR

echo Lo que has introducido es $VAR
MINUS=`echo $VAR | tr [:upper:] [:lower:]`
echo En minusculas: $MINUS
MAYUS=`echo $VAR | tr [:lower:] [:upper:]`
echo "En mayusculas:" `echo $VAR | tr [:lower:] [:upper:]`
