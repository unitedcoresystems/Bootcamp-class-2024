#!/bin/bash

name=$1
pin=$2

# Greet the customer 
echo "Good morning $name" 
# welcome the customer to our bank 
echo "$name, Welcome to Bank of America"  

# Print the name of the script
echo "Name of the script: $0"

# Print the 1st and 2nd Argument 
echo "The 1st argument is $1"
echo "The 2nd argument is $2"

# Print the total number of arguments
echo "Total number of arguments: $#"

# Print all arguments using $* and $@
echo "All arguments using \$*: $*"
echo "All arguments using \$@:\n$@"

# Print the status of the argument 
echo "The status of the last run command is: $?"  

# Print the process id 
echo "The process id is: $$"