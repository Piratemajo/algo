#!/bin/bash

log=comenta.log
dirlog=log
fecha=$(date +"%Y%m%d%H%M%S")
fecha2=$(date +"[%Y-%m-%d %H:%M:%S]")
almohadillas="##############################"

#Realizar copia de seguridad
cp $dirlog/$log $dirlog/$log.$fecha

#Enviar almohadillas
echo $almohadillas >> $dirlog/$log

#Pedir comentario y enviarlo al fichero
echo "Escribe un comentario:"
read comentario
echo "Comentario: $comentario" >> $dirlog/$log

# Enviar linea en blanco
echo >> $dirlog/$log

#Enviar fecha y comando
echo "$fecha2 $1" >> $dirlog/$log

# Enviar linea en blanco
echo >> $dirlog/$log

#Ejecutar y enviar
$1 >> $dirlog/$log

#Enviar almohadillas
echo $almohadillas >> $dirlog/$log

