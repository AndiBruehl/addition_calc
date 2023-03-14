#!/bin/bash

echo " Hallo ich bin $0. Lass uns 2 Zahlen addieren!"

if [ $1 = $(whoami) ]; then
echo " Hallo $(whoami), schön dich zu sehen."

else

echo " Die erste Zahl lautet: $1 "

if [ $# -gt 2 ]; then

echo " Die 2. Zahl lautet: $2"
echo " Du hast leider eine Zahl zu viel eingegeben."
echo " Diese kann ich leider nicht berücksichtigen. Tut mir Leid."
echo " Das Ergebnis von $1 + $2"
let z=$1+$2
echo " ist $z."
echo " Das war's. Bis zum nächsten mal!"

elif [ $# -lt 2 ]; then
echo " Du hast leider nur eine Zahl eingegeben."
echo " So kann ich leider nicht addieren. Tut mir Leid."
echo " Versuch es bitte nochmal!"
exit 1

else

echo " Und Zahl nummero 2: $2"

if [ $2 -lt 5 ]; then
echo " Zahl 2 ist kleiner 5!"
fi

if [ $2 -gt 5 ]; then
echo " Die zweite Zahl ist größer als 5."
fi
echo " Das Ergebnis von $1 + $2"
let z=$1+$2
echo " ist $z."
echo " Du hast mir insgesamt $# Argumente übergeben."
echo " Das war's. Bis zum nächsten mal!"
fi

fi
