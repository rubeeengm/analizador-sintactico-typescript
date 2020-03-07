#!/bin/bash

rm -r *.class
rm -r *.java
javacc Analizador.jj
javac *.java


