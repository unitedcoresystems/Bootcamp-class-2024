String comparison operators in Bash are used to compare strings. The comparison is based on the ASCII values of the characters in the strings and is typically used in conditional expressions. Here are the string comparison operators in Bash:

- `=` or `==`: Checks if two strings are equal.
- `!=`: Checks if two strings are not equal.
- `>`: Checks if one string is greater than another in ASCII alphabetical order. Bash requires `[[ ]]` for this comparison.
- `<`: Checks if one string is less than another in ASCII alphabetical order. Bash requires `[[ ]]` for this comparison.
- `-z`: Checks if a string is empty (zero length).
- `-n`: Checks if a string is not empty (non-zero length).

Here's an example of how you might use these operators in a bash script:

```bash
#!/bin/bash

# Assign strings to variables
str1="Hello"
str2="World"

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
```

In the script above:

- The `=` operator checks for string equality. An alternative is `==`, which is also commonly used for this purpose.
- The `!=` operator checks if two strings are not equal.
- The `<` and `>` operators are used within `[[ ]]` and check for alphabetical order. Note that these operators must be escaped or quoted in single `[ ]` test brackets because they are also used for file redirections.
- The `-z` operator checks if a string has zero length.
- The `-n` operator checks if a string has non-zero length. Note that you don't actually need to use `-n` explicitly since `if [ "$str1" ]` will return true if `$str1` is non-empty.

Always remember that when you are doing string comparisons that involve `<` and `>`, use the double square brackets `[[ ]]` to avoid syntax errors or unexpected behavior due to these being globbing patterns when used within single square brackets `[ ]`.