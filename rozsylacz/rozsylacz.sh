#!/bin/bash
if [ -z $1 ]
then
	echo "Brak tematu"
	exit 1
fi
if [ -z $2 ]
then
	echo "Brak pliku z wiadomoscią"
	exit 2
else
	if [ ! -e $2 ]
	then
		echo "Plik nie istnieje"
		exit 3
	fi
fi
echo "Temat: "$1
echo "Treść: "$2
for x in `grep @ ./../dokumenty/baza_kol.txt|cut -f 3`
do
	echo "wysylam do:" $x
#	mutt -s "$1" $x < $2
done
