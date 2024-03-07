### Understanding Command-Line Arguments

In a Bash script, positional parameters `$1`, `$2`, `$3`, etc., represent the command-line arguments passed to the script. `$0` refers to the script's name itself.

#### Greeting Script Example

This script demonstrates how to use a command-line argument to print a personalized greeting:

```bash
#!/bin/bash
# Takes a name as a command-line argument and prints a personalized greeting.
echo "Hello, $1!"
```

To run this script named `greetings.sh` with "Emmanuel" as an argument:

```bash
sh greetings.sh Emmanuel
```

Output:

```
Hello, Emmanuel!
```
