\#!/bin/bash

DIALOG=${DIALOG=dialog}
$DIALOG --title "Segregator" --clear \
   --yesno "Czy chcesz dokonac segregacji plikow w tym katalogu?" 10 40
case $? in
0)
  echo "W porzadku";;
1)
  break; clear;;
255)
  break; clear;;
esac

dialog --menu "Wg jakiego kryterium chcesz posegregowac pliki?" 13 40 3 1 rozmiar 2 "data utworzenia" 3 nazwa
clear

