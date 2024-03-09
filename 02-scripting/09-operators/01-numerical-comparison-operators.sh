#!/bin/bash

# Assign numbers to variables
num1=$1
num2=$2

# Check if numbers are equal
if [ "$num1" -eq "$num2" ]; then
    echo "The numbers are equal."
else
    echo "The numbers are not equal."
fi

# Check if num1 is less than num2
if [ "$num1" -lt "$num2" ]; then
    echo "$num1 is less than $num2."
fi

# Check if num1 is greater than num2
if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater than $num2."
else
    echo "$num1 is not greater than $num2."
fi

# Check if num1 is less than or equal to num2
if [ "$num1" -le "$num2" ]; then
    echo "$num1 is less than or equal to $num2."
fi

# Check if num1 is greater than or equal to num2
if [ "$num1" -ge "$num2" ]; then
    echo "$num1 is greater than or equal to $num2."
else
    echo "$num1 is not greater than or equal to $num2."
fi