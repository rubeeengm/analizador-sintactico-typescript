#!/bin/bash

archivosCompilados=$(ls | grep "*.class" | wc -l)

if [ $archivosCompilados -gt 0 ] 
	then 
		rm -r *.class
	else
		echo "**** no existen archivos .class generados"
fi

clasesGeneradas=$(ls | grep "*.java" | wc -l)

if [[ $clasesGeneradas -gt 0 ]] 
	then
		rm -r *.java
	else
		echo "**** no existen archivos .java generados"
fi

javacc Analizador.jj
javac *.java