#### Modifying a Script to Use Command-Line Arguments

Original Script for Authenticating Bank Users:

```bash
#!/bin/bash
# Authenticates bank users
# Author: Emmanuel

# Greet the customer 
echo "Good morning"
# Ask for the customer's name 
echo "Please enter your name"
# Read the customer's name
read name
# Welcome the customer to the bank
echo "$name, Welcome to Bank of America"
```

Modified Script to Use Command-Line Argument:

Create a file named `bank.sh`:

```bash
vi bank.sh
```

Copy the following into `bank.sh`:

```bash
#!/bin/bash
# Authenticates bank users by passing a command-line argument 
# Author: Emmanuel

# Greet the customer and welcome them to the bank using the command-line argument
echo "Good morning, $1"
echo "$1, Welcome to Bank of America"
```

Execution:

To run the modified script with "Emmanuel" as the argument:

```bash
sh bank.sh Emmanuel
```

Output:

```
Good morning, Emmanuel
Emmanuel, Welcome to Bank of America
```

This modification demonstrates how to streamline a script to accept a user's name as a command-line argument, eliminating the need for interactive input and making the script more efficient and automation-friendly.
```