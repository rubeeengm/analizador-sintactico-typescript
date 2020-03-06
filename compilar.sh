#!/bin/bash

rm -r *.class
rm -r *.java
javacc ipb.jj
javac *.java


