#!/bin/bash

# Define a variable
a=$1

# Check the value of the variable
if [ "$a" -lt 10 ]; then
    echo "Variable a is less than 10."
elif [ "$a" -eq 10 ]; then
    echo "Variable a is equal to 10."
else
    echo "Variable a is greater than 10."
fi
