#!/bin/bash

BASE=`pwd`
TOCOPY=0
echo $BASE

cd /home/dani/Dropbox/UDESC/Mestrado
ATUAL=`pwd`
sum=0
for x in `ls -R | grep -r -l acronimos.tex`; 
do
	TOCOPY=$ATUAL/$x
	echo $TOCOPY
	cp -f $TOCOPY $BASE/$sum.txt
	((sum++))
done

cd /home/dani/Dropbox/UDESC/ProjPesq14
ATUAL=`pwd`
for x in `ls -R | grep -r -l acronimos.tex`; 
do
	TOCOPY=$ATUAL/$x
	echo $TOCOPY
	cp -f $TOCOPY $BASE/$sum.txt
	((sum++))
done
