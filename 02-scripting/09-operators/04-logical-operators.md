# Logical Operators

logical operators in Bash are used to form complex conditional expressions by combining multiple conditions. The primary logical operators are `&&`, `||`, and `!`, which represent logical AND, logical OR, and logical NOT, respectively. Here’s how they work:

### Logical AND (&&)

The `&&` operator allows you to execute the second command only if the first command is successful (returns an exit status of 0, which signifies success in Unix-like systems).

Example in a conditional statement:
```bash
if [ "$a" -gt 0 ] && [ "$a" -lt 10 ]; then
    echo "Variable a is between 1 and 9."
fi
```
Example in command chaining:
```bash
mkdir new_directory && cd new_directory
```
Here, `cd new_directory` will only execute if `mkdir new_directory` is successful.

### Logical OR (||)

The `||` operator allows you to execute the second command only if the first command fails (returns a non-zero exit status).

Example in a conditional statement:
```bash
if [ "$a" -lt 0 ] || [ "$a" -gt 10 ]; then
    echo "Variable a is outside the range of 1 to 9."
fi
```
Example in command chaining:
```bash
cd some_directory || echo "Directory does not exist."
```
Here, the message "Directory does not exist." will be printed if the `cd` command fails.

### Logical NOT (!)

The `!` operator negates a condition, returning true if the condition is false, and vice versa.

Example in a conditional statement:
```bash
if ! [ "$a" -eq 5 ]; then
    echo "Variable a is not equal to 5."
fi
```
This will execute the `echo` command if `$a` does not equal 5.

### Combining Logical Operators

You can also combine these operators to create more complex expressions:

Example combining AND and OR:
```bash
if [ "$a" -eq 5 ] || ([ "$a" -gt 10 ] && [ "$a" -lt 20 ]); then
    echo "Variable a is either 5 or between 11 and 19."
fi
```
Example with all three operators:
```bash
if ! ([ "$a" -le 5 ] && [ "$b" -ge 10 ]) || [ "$c" -eq 15 ]; then
    echo "Either a is not <= 5 and b is not >= 10, or c is equal to 15."
fi
```

In these examples, the `[ ]` symbol is used for the test command. You could also use the newer `[[ ]]` for tests, which is more flexible in some ways, such as not requiring quotes around variable names and allowing for the regular `<` and `>` operators for string comparison.

It's important to note that while `&&` and `||` are used within conditional expressions and for chaining commands, `!` is used only in conditional expressions to negate the test that follows it. When using these operators in script, be mindful of their precedence: `&&` has higher precedence than `||`. When in doubt, use parentheses to ensure the order of evaluation is clear and matches your intentions.