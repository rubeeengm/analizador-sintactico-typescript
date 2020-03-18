#!/bin/bash

#verifica si existen los ficheros de salida y los vacía
if [ -f ./lexico.txt ];
	then
		cat /dev/null > lexico.txt
fi

if [ -f ./sintactico.txt ];
	then
		cat /dev/null > sintactico.txt
fi

#borra todos los archivos .class
archivosCompilados=$(ls | grep ".class" | wc -l)

if [ $archivosCompilados -gt 0 ] 
	then 
		rm -r *.class
	else
		echo "**** no existen archivos .class generados"
fi

#borra todos los archivos .java
clasesGeneradas=$(ls | grep ".java" | wc -l)

if [[ $clasesGeneradas -gt 0 ]] 
	then
		rm -r *.java
	else
		echo "**** no existen archivos .java generados"
fi

#compilacion
javacc Analizador.jj
javac *.java