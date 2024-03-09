#!/bin/bash

# Define two variables
a=$1
b=$2

# Check the values of the variables
if [ "$a" -lt 10 ]; then
    if [ "$b" -gt 15 ]; then
        echo "Variable a is less than 10 and b is greater than 15."
    else
        echo "Variable a is less than 10 and b is not greater than 15."
    fi
else
    echo "Variable a is not less than 10."
fi
