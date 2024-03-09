Sure! Let's dive into more examples showcasing the use of `let`, arithmetic expansion `$(( expression ))`, and `declare -i` in Bash for performing integer-based operations.

### 1. Using `let`

The `let` command is used for performing arithmetic operations. It evaluates each expression and assigns the result to a variable.

```bash
#!/bin/bash

# Define and increment a variable
let "a = 5"
let "a += 1"
echo "Using let: a = $a"  # Outputs: a = 6

# Multiplication
let "b = a * 3"
echo "Using let: b = $b"  # Outputs: b = 18
```

### 2. Using Arithmetic Expansion `$(( expression ))`

Arithmetic expansion allows the evaluation of an arithmetic expression and the substitution of the result. It's very convenient for inline calculations.

```bash
#!/bin/bash

# Increment a variable
a=$((5 + 1))
echo "Using arithmetic expansion: a = $a"  # Outputs: a = 6

# Complex expression
b=$((a * 3 + 2))
echo "Using arithmetic expansion: b = $b"  # Outputs: b = 20
```

### 3. Using `declare -i`

The `declare -i` command is used to treat variables as integers explicitly. This can simplify arithmetic operations since you don't need to use let or $(( )) for arithmetic.

```bash
#!/bin/bash

# Declare integer variables
declare -i c=5
declare -i d

# Perform arithmetic directly
d=c+1
echo "Using declare -i: d = $d"  # Outputs: d = 6

# More complex operations
d=d*3
echo "Using declare -i: d = $d"  # Outputs: d = 18
```

### Combining Concepts

You can also mix these methods in more complex scripts. Here's a quick example that demonstrates the flexibility of Bash arithmetic:

```bash
#!/bin/bash

# Using declare to initialize an integer
declare -i result

# Performing an operation using arithmetic expansion
result=$((3 * 2))

# Using let to increment the result
let "result += 5"

echo "Combined result = $result"  # Outputs: Combined result = 11
```

These examples demonstrate the flexibility and utility of Bash in handling integer-based operations. Whether you're writing simple scripts or more complex automation tasks, understanding these concepts can significantly aid in your scripting tasks.