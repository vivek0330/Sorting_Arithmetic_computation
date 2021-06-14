#!/bin/bash -x

echo "Welcome to Arithmetic Computation"

#TAKE USER INPUT
read -p "Enter the first value a is: " number1
read -p "Enter the second value b is: " number2
read -p "Enter the third value c is: " number3

#Airthmetic operation
output1=`awk 'BEGIN{printf("%0.2f" , ('$number1+$number2*$number3'))}'`
output2=`awk 'BEGIN{printf("%0.2f" , ('$number1*$number2+$number3'))}'`
output3=`awk 'BEGIN{printf("%0.2f" , ('$number3+$number1/$number2'))}'`
output4=`awk 'BEGIN{printf("%0.2f" , ('$number1%$number2+$number3'))}'`

#STORE THE ANSWER IN DICTONARY
declare -A answerDictionary

answerDictionary[output1]=$output1
answerDictionary[output2]=$output2
answerDictionary[output3]=$output3
answerDictionary[output4]=$output4

#Dislay the result in the dictionary format
echo ${answerDictionary[@]}

