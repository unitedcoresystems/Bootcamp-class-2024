In Linux bash shell scripting, a `while` loop is a control structure that allows you to repeatedly execute a block of commands as long as a specified condition is true. The general syntax of a `while` loop in a bash script is:

```bash
while [ condition ]
do
  command1
  command2
  command3
  ...
done
```

- The `condition` is evaluated before each pass through the loop. If the condition is true (exit status of 0), the commands between `do` and `done` are executed. The loop continues until the condition becomes false.
- The condition is usually a comparison or logical expression that involves variables or command outputs.

Here's a basic example of a `while` loop in a bash script:

```bash
#!/bin/bash

counter=0
while [ $counter -lt 10 ]; do
  echo "Counter is $counter"
  ((counter++))
done
```
```bash 
#!/bin/bash
i=1
while [[ $i -le 10 ]] ; do
   echo "$i"
  (( i += 1 ))
done
```

This script initializes a counter to 0 and then enters a `while` loop, which continues as long as the counter is less than 10. Inside the loop, it prints the current value of the counter and then increments the counter by 1. When the counter reaches 10, the condition `[ $counter -lt 10 ]` becomes false, and the loop exits.

### Key Points:
- The condition in the `[ condition ]` statement must be enclosed in square brackets, which is a shorthand for the `test` command in bash.
- Spaces are required after `[` and before `]` in the condition.
- You can use arithmetic, string, and file test operators in the condition.
- Incrementing a variable can be done with arithmetic expansion, `((counter++))`, or using the `let` command, `let "counter+=1"`.