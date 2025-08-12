#!/bin/bash

echo "Class 24 calculator"
echo "start================start"

# Ask for two numbers
read -p "Please enter your first number: " num1
read -p "Please enter your second number: " num2

# Display the operation menu
echo "Select your operation"
echo "1. Addition (+)"
echo "2. Subtraction : subtract items (-)"
echo "3. Multiplication (*)"
echo "4. Division (/) "

# Read the selected user choice
read -p "Select operator between 1 and 4 [1-4]: " choice

# Perform arithmetic operation
case "$choice" in
  1)
    result=$(echo "$num1 + $num2" | bc -l)
    echo "Result: $num1 + $num2 = $result"
    ;;
  2)
    result=$(echo "$num1 - $num2" | bc -l)
    echo "Result: $num1 - $num2 = $result"
    ;;
    
  3) result=$(echo "$num1 * $num2" | bc -l)
    echo "Result: $num1 * $num2 = $result"
    ;;

  4) if [ "$num2" == "0" ]; then
      echo "Error: Division by zero is not allowed."
    else
      result=$(echo "scale=2; $num1 / $num2" | bc)
      echo "Result: $num1 / $num2 = $result"
    fi
    ;;
  *)
    echo "Invalid choice"
    exit 1
    ;;
esac
