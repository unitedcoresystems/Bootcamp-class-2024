
#### Calculator Script Example

Imagine a `calculator.sh` script that performs basic arithmetic operations based on the command-line arguments passed to it:

```bash
#!/bin/bash
# Simple calculator script to demonstrate command-line arguments

operation=$1
num1=$2
num2=$3

case $operation in
  add)
    result=$((num1 + num2))
    ;;
  subtract)
    result=$((num1 - num2))
    ;;
  multiply)
    result=$((num1 * num2))
    ;;
  divide)
    result=$((num1 / num2))
    ;;
  *)
    echo "Unsupported operation: $operation"
    exit 1
esac

echo "Result: $result"
```

You can run this script with various operations like so:

```bash
sh calculator.sh add 5 3
sh calculator.sh subtract 10 2
sh calculator.sh multiply 4 7
sh calculator.sh divide 16 8
```

#### Special Variables

- `$#` - The number of arguments passed to the script.
- `$@` or `$*` - All the arguments passed to the script. `$@` treats each argument as a separate word, while `$*` treats all arguments as a single word.
- `$?` - The exit status of the last command executed. `0` indicates success, while any other number (1-255) indicates an error.
- `$$` - The process ID of the current script.

#### Example with `calculator.sh`:

After running `sh calculator.sh divide 16 8`, the variables would hold the following values:

- `$1` = divide
- `$2` = 16
- `$3` = 8
- `${10}` = (Not applicable here as there are less than 10 arguments)
- `$#` = 3
- `$@` or `$*` = `divide 16 8`
- `$?` = Depends on the success or failure of the script execution.
- `$$` = Process ID of the script.

### The Importance of `$?` in Shell Scripting

The `$?` variable is crucial for error handling and control flow in scripts. It allows the script to react differently based on the success or failure of commands. For example, you can perform error checking and take corrective actions if a command fails, ensuring your script behaves as expected even in unexpected situations.