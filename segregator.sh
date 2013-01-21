#!/bin/bash

DIALOG=${DIALOG=dialog}
$DIALOG --title "Segregator" --clear \
   --yesno "\n \n Czy chcesz dokonac segregacji plikow wg daty utworzenia w tym katalogu?" 9 40
case $? in
0)
$DIALOG --menu "Jak chcesz posegregowac pliki?" 12 40 3 1 "dziennie" 2 "wg miesiecy"

case $? in 
0)
$DIALOG --title "Segregacja dzienna" --clear \
   --yesno "\n \n       Skompresowac pliki?" 8 40
case $? in
0)
  MAX=`ls -l |wc -l`
ls -l >.zzz.txt
mkdir `ls -l | cut -b 25-30| tr ' ' '-'` 2> /dev/null
cat .zzz.txt

 for i in `seq 2 $MAX`
do
   LINE=$i"p"
        mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-30 | tr ' '$
done
rm -rf .zzz.txt

zip -r segr-`date -u +%F` `ls | tr ' ' '\n'`;;


1)
MAX=`ls -l |wc -l`
ls -l >.zzz.txt
mkdir `ls -l | cut -b 25-30| tr ' ' '-'` 2> /dev/null
cat .zzz.txt

 for i in `seq 2 $MAX`
do
   LINE=$i"p"
        mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-30 | tr ' '$
done
rm -rf .zzz.txt ;;


255)
  break; clear;;
esac

;;

1)
$DIALOG --title "Segregacja wg miesiecy" --clear \
   --yesno "\n \n       Skompresowac pliki?" 8 40
case $? in
0)
MAX=`ls -l |wc -l`
ls -l >.zzz.txt
mkdir `ls -l | cut -b 25-27| tr ' ' '-'` 2> /dev/null
cat .zzz.txt

 for i in `seq 2 $MAX`
do
   LINE=$i"p"
        mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-27 | tr ' '$
done
rm -rf .zzz.txt

zip -r segr-`date -u +%F` `ls | tr ' ' '\n'` ;;

1)
MAX=`ls -l |wc -l`
ls -l >.zzz.txt
mkdir `ls -l | cut -b 25-27| tr ' ' '-'` 2> /dev/null
cat .zzz.txt

 for i in `seq 2 $MAX`
do
   LINE=$i"p"
        mv `cat <.zzz.txt| sed -n $LINE| cut -b 38-`  --target-directory=`cat <.zzz.txt |sed -n $LINE| cut -b 25-27 | tr ' '$
done
rm -rf .zzz.txt ;;


255)
  break; clear;;
esac
;;

1)
  break; clear;;
255)
  break; clear;;
esac



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
