#!/bin/bash -x

echo "Welcome to Arithmetic Computation"

#TAKE USER INPUT
read -p "Enter the first value a is: " number1
read -p "Enter the second value b is: " number2
read -p "Enter the third value c is: " number3

#Airthmetic operation
answer1=`awk 'BEGIN{printf("%0.2f" , ('$number1+$number2*$number3'))}'`
answer2=`awk 'BEGIN{printf("%0.2f" , ('$number1*$number2+$number3'))}'`
answer3=`awk 'BEGIN{printf("%0.2f" , ('$number3+$number1/$number2'))}'`
answer4=`awk 'BEGIN{printf("%0.2f" , ('$number1%$number2+$number3'))}'`

#STORE ANSWERS IN THE DICTIONARY
declare -A answersDictionary

answersDictionary[answer1]=$answer1
answersDictionary[answer2]=$answer2
answersDictionary[answer3]=$answer3
answersDictionary[answer4]=$answer4

#READ VALUES FROM THE DICTIONARY INTO ARRAY
echo "values of the dictionary:"
for((index=0; index<${#answersDictionary[@]}; index++))
do
	array[$index]=${answersDictionary[answer$((index+1))]}
done

#DISPLAY THE VALUES OF ARRAY
echo ${array[@]}

#sorting array in ascending order
ascending_order=$(printf '%s\n' ${array[@]} | sort -n)
echo $ascending_order
