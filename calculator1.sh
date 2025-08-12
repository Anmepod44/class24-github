#!/bin/bash

echo "Class 24 caculator"

echo "==stat======start"

#Ask for two numbers

read -p "please enter first number:" num1
read -p "Please enter second number:" num2

#Display the menu

echo "Select your operation:"
echo "1. addition (+)"
echo "2. subtraction (-)"
echo "3. multiplication (*)"
echo "4. division (/)"
echo "5. modulus (%)"

read -p "Please enter your choice between 1-5: " choice

case $choice in
    1)
        result=$(($num1 + $num2))
        echo "The result addition of $num1 + $num2 = $result"
        ;;
    2)
        result=$(($num1 - $num2))
        echo "The result subtraction of $num1 - $num2 = $result"
        ;;
    3)
        result=$(($num1 * $num2))
        echo "The result multiplication of $num1 * $num2 = $result"
        ;;
    4)
        result=$(echo "$num1 / $num2" | bc)
        echo "The result division of $num1 / $num2 = $result"
        ;;
    5)
        result=$(echo "$num1 % $num2" | bc)
        echo "The reult modulus of $num1 % $num2 = $result"
        ;;
    *)
        echo "Invalid choice please select between 1-5"
        ;;
esac