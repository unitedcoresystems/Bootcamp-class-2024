#!/bin/bash

# Arithmetic Expansion $(( expression ))
echo "((3 + 4))"

# Increment a variable
a=$((5 + 1))
echo "Using arithmetic expansion: a = $a"  # Outputs: a = 6

# Complex expression
b=$((a * 3 + 2))
echo "Using arithmetic expansion: b = $b"  # Outputs: b = 20

