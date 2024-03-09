# numerical comparison operators 

They are used to compare numeric values. It's important to use these operators within the context of arithmetic expressions or conditional statements like `if`, `while`, and `until`. Here are the primary numerical comparison operators:

- **-eq**: equals (`==` in other programming languages)
- **-ne**: not equal (`!=` in other programming languages)
- **-gt**: greater than (`>` in other programming languages)
- **-ge**: greater than or equal to (`>=` in other programming languages)
- **-lt**: less than (`<` in other programming languages)
- **-le**: less than or equal to (`<=` in other programming languages)

Here is how you might use these operators in a Bash script:

```bash
#!/bin/bash

# Assign numbers to variables
num1=10
num2=20

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
```

This script demonstrates the use of different numerical comparison operators to compare two numeric values and prints out the result of these comparisons.

In bash, spaces are important within the square brackets of the test command. Omitting the spaces can lead to syntax errors or unintended behavior. Always use spaces around the operator and arguments like `[ "$num1" -eq "$num2" ]`.