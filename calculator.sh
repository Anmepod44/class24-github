#!/bin/bash

# ================================
# Simple Calculator - Class 24
# ================================

clear
echo "======================================"
echo "   Welcome to Class 24 Calculator"
sleep 2
echo "======================================"
echo "  Let's do some quick math together!"
echo "--------------------------------------"
sleep 2 # Pause for 2 seconds to let the user read the welcome message

# Ask for two numbers
read -p "Please enter your first number: " num1
read -p "Please enter your second number: " num2

# Display the operation menu
echo "Select your operation"
echo "1. Addition (+)"
echo "2. Subtraction : subtract items (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
echo "5. Modulus (%)"

# Read the selected user choice
read -p "Select operator between 1 and 5 [1-5]: " choice

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
  4)
    result=$(echo "$num1 / $num2" | bc -l)
    echo "Result: $num1 / $num2 = $result"
    ;;
  5)result=$(echo "$num1 % $num2" | bc)
    echo "Result: $num1 % $num2 = $result"
    ;;  
  *)
    echo "Invalid choice"
    ;;
esac