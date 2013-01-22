#!/bin/bash

echo "Czy chcesz dokonac segregacji plikow wg daty utworzenia w tym katalogu?" 
echo "Wprowadz 1 - (TAK)"
echo "Wprowadz 2 - (NIE)"
	read A
        if [$A=1] then
		echo "Jak chcesz posegregowac pliki?" 
		echo "Wprowadz 1 - (dziennie)"
		echo "Wprowadz 2 - (wg miesiecy)"
		read B

				if [$B=1] then
					echo "Skompresowac pliki?"
					echo "Wprowadz 1 - (TAK)"
					echo "Wprowadz 2 - (NIE)"
					read C


					if [$C=1] then
						MAX=`ls -l |wc -l`
	    					ls -l >.zzz.txt
						mkdir `ls -l | cut -b 25-30| tr ' ' '-'` 2> /dev/null
						cat .zzz.txt

						for i in `seq 2 $MAX`
#25
						do
							LINE=$i"p"
							mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-30 | tr ' ' '-'`
						done
						rm -rf .zzz.txt

						zip -r segr-`date -u +%F` `ls | tr ' ' '\n'`


					elif [$C=2] then
						MAX=`ls -l |wc -l`
						ls -l >.zzz.txt
						mkdir `ls -l | cut -b 25-30| tr ' ' '-'` 2> /dev/null
						cat .zzz.txt

						for i in `seq 2 $MAX`
						do
							LINE=$i"p"
							mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-30 | tr ' ' '-'`
						done
						rm -rf .zzz.txt
					fi


			elif [$B=2] then
#50
				echo "Skompresowac pliki?"
				echo "Wprowadz 1 - (TAK)"
				echo "Wprowadz 2 - (NIE)"
				read D

					if [$D=1] then
						MAX=`ls -l |wc -l`
						ls -l >.zzz.txt
						mkdir `ls -l | cut -b 25-27| tr ' ' '-'` 2> /dev/null
						cat .zzz.txt

						for i in `seq 2 $MAX`
						do
							LINE=$i"p"
							mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-27 | tr ' ' '-'`
						done
						rm -rf .zzz.txt

						zip -r segr-`date -u +%F` `ls | tr ' ' '\n'`

					elif [$D=2] then
						MAX=`ls -l |wc -l`
						ls -l >.zzz.txt
						mkdir `ls -l | cut -b 25-27| tr ' ' '-'` 2> /dev/null
						cat .zzz.txt
								for i in `seq 2 $MAX`
						do
							LINE=$i"p"
							mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-27 | tr ' ' '-'`
						done
						rm -rf .zzz.txt

					fi
				fi

	elif  [$A=2]
		break; clear
	fi

echo koniec programu
sleep 5

<<COMMENT1

po dniach z pakowaniem
MAX=`ls -l |wc -l`
ls -l >.zzz.txt
mkdir `ls -l | cut -b 25-30| tr ' ' '-'` 2> /dev/null
cat .zzz.txt
 
 for i in `seq 2 $MAX` 
do
   LINE=$i"p"
	mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-30 | tr ' ' '-'` 2> /dev/null
done
rm -rf .zzz.txt

zip -r segr-`date -u +%F` `ls | tr ' ' '\n'`

COMMENT1

<<COMMENT2
po dniach bez pakowania
MAX=`ls -l |wc -l`
ls -l >.zzz.txt
mkdir `ls -l | cut -b 25-30| tr ' ' '-'` 2> /dev/null
cat .zzz.txt
 
 for i in `seq 2 $MAX` 
do
   LINE=$i"p"
	mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-30 | tr ' ' '-'` 2> /dev/null
done
rm -rf .zzz.txt
COMMENT2

<<COMMENT3
PO MIESIĄCACH Z PAKOWANIEM

MAX=`ls -l |wc -l`
ls -l >.zzz.txt
mkdir `ls -l | cut -b 25-27| tr ' ' '-'` 2> /dev/null
cat .zzz.txt
 
 for i in `seq 2 $MAX` 
do
   LINE=$i"p"
	mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-27 | tr ' ' '-'` 2> /dev/null
done
rm -rf .zzz.txt

zip -r segr-`date -u +%F` `ls | tr ' ' '\n'`
COMMENT3

<<COMMENT4
PO MIESIACACH BEZ PAKOWANIA

MAX=`ls -l |wc -l`
ls -l >.zzz.txt
mkdir `ls -l | cut -b 25-27| tr ' ' '-'` 2> /dev/null
cat .zzz.txt
 
 for i in `seq 2 $MAX` 
do
   LINE=$i"p"
	mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-27 | tr ' ' '-'` 2> /dev/null
done
rm -rf .zzz.txt

COMMENT4
