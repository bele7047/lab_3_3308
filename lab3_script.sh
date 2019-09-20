#!/bin/bash
#Ben Lehfeldt-Ehlinger
#9/18/19

echo "Enter a File Name: "
read FileName
echo "Enter an expression: "
read express

egrep $express $FileName


numberOfPhones=$(egrep -c '[0-9]{3}-[0-9]{3}-[0-9]{4}' $FileName)
echo "The number of cell numbers is: $numberOfPhones"
numberOfEmail=$(egrep -c '.com$' $FileName)
echo "The number of emails is: $numberOfEmail"
egrep '[303]{3}-[0-9]{3}-[0-9]{4}' $FileName
egrep '^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}' $FileName | egrep -v "geocities.com" >>email_results.txt
