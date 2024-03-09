#!/bin/bash

# Assign strings to variables
str1=$1
str2=$2

# Check if strings are equal
if [ "$str1" = "$str2" ]; then
    echo "The strings are equal."
else
    echo "The strings are not equal."
fi

# Check if strings are not equal
if [ "$str1" != "$str2" ]; then
    echo "The strings are not equal."
fi

# Check if str1 is greater than str2 (alphabetically)
if [[ "$str1" > "$str2" ]]; then
    echo "\"$str1\" comes after \"$str2\" alphabetically."
else
    echo "\"$str1\" does not come after \"$str2\" alphabetically."
fi

# Check if str1 is less than str2 (alphabetically)
if [[ "$str1" < "$str2" ]]; then
    echo "\"$str1\" comes before \"$str2\" alphabetically."
else
    echo "\"$str1\" does not come before \"$str2\" alphabetically."
fi

# Check for non-zero length string
if [ -n "$str1" ]; then
    echo "String str1 is not empty."
fi

# Check for zero length string
if [ -z "$str1" ]; then
    echo "String str1 is empty."
else
    echo "String str1 is not empty."
fi