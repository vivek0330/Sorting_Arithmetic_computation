#!/bin/bash -x

echo "Welcome to Arithmetic Computation"

#TAKE USER INPUT
read -p "Enter the first value a is: " number1
read -p "Enter the second value b is: " number2
read -p "Enter the third value c is: " number3

#Airthmetic operation
output=`awk 'BEGIN{printf("%0.2f" , ('$number1*$number2+$number3'))}'`

#Dislay the result
echo $output
