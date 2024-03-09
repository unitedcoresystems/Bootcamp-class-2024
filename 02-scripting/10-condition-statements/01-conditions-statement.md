# Conditional statements (if/else)

Conditional statements in Bash are a fundamental part of scripting that allow you to make decisions in your code. The `if` statement starts the conditional, followed by the condition in square brackets `[ condition ]`, then the `then` keyword begins the block of code that will run if the condition is true. The `else` part is optional and allows you to run an alternative block of code if the condition is false. There's also an `elif` statement, which is short for "else if", to check additional conditions.

Here's the basic syntax:

if statements Syntax:
```bash
if [ condition ] or (( conditions ))
then
    # code to execute if condition is true
fi
```

or 

```bash
if [ condition ]; then 
    # code to execute if condition is true
fi
```

if else statements Syntax:
 
```bash  
  if [ conditions ]  or (( conditions ))
  then 
  commands 
  else
  commands
  fi 
```

if else elif statements Syntax:

```bash 
 if [ conditions ]  or (( conditions ))
  then 
  commands 
  else
  commands
  elif [ conditions ]  or (( conditions ))
  then 
  Command
  fi 
```
And here's an example of a script using `if/else`:

```bash 
#!/bin/bash 
# This script determines if you are eligible to be admitted 
echo "How much did you pay"
read price
if [ $price -ge 1200 ]
then
echo "you are admitted"
elif [ $price -lt 1200 ]
then
echo " you have a balance of $((1200 - $price)) "
echo "Request for an invoice to settle your balance "
fi
```

```bash
#!/bin/bash

# Define a variable
a=5

# Check the value of the variable
if [ "$a" -lt 10 ]; then
    echo "Variable a is less than 10."
elif [ "$a" -eq 10 ]; then
    echo "Variable a is equal to 10."
else
    echo "Variable a is greater than 10."
fi
```

In this script:
- The first condition checks if `a` is less than 10.
- If the first condition is false, the `elif` (else if) condition checks if `a` is equal to 10.
- If both `if` and `elif` conditions are false, the `else` block executes.

More complex example with nested `if` and `else`:

```bash
#!/bin/bash

# Define two variables
a=5
b=20

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
```

This script has a nested `if` statement inside the first `if` block, which is a way to check multiple conditions.

Remember, Bash is space-sensitive: you need spaces after `[` and before `]` in your conditions. Additionally, ensure you are using the correct comparison operators for strings vs. numbers (`=` for strings and `-eq` for numbers, for example).

The `if/else` conditional structure is very powerful and forms the basis of most logic in Bash scripts, allowing you to execute different commands based on varying conditions.
