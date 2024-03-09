### Special Bash Variables Explained

#### $0 - Name of the Script
- **Description**: Gives the name of the script itself.
- **Example**:
  ```bash
  echo $0
  ```
  If you run a script named `myscript.sh`, it will output:
  ```
  ./myscript.sh
  ```

#### $# - Number of Arguments
- **Description**: Provides the count of total arguments passed to the script.
- **Example**:
  ```bash
  echo $#
  ```
  If you run: `./myscript.sh arg1 arg2 arg3`, it will output:
  ```
  3
  ```

#### $* and $@ - All Arguments
- **Description**: Both `$*` and `$@` give all the arguments passed to the script, but they behave differently when quoted.
- **Example**:
  If you run: `./myscript.sh arg1 arg2 arg3`
  - For `$*`, it will output:
    ```
    arg1 arg2 arg3
    ```
  - For `$@`, when quoted, it treats each argument as a separate word, outputting:
    ```
    arg1
    arg2
    arg3
    ```

#### $? - Exit Status
- **Description**: This variable provides the exit status of the last command executed. An exit status of `0` usually indicates success, while any other value indicates an error.
- **Example**:
  ```bash
  echo $?
  ```
  If you execute a successful command before checking `$?`, it will output:
  ```
  0
  ```

---

### Practical Usage in a Script

To demonstrate using these variables, here's a simple script snippet:

```bash
#!/bin/bash

# Print the name of the script
echo "Name of the script: $0"

# Print the total number of arguments
echo "Total number of arguments: $#"

# Print all arguments using $* and $@
echo "All arguments using \$*: $*"
echo -e "All arguments using \$@:\n$@"
```

This snippet clearly showcases how to use `$0`, `$#`, `$*`, and `$@` in a Bash script, making it easy to understand their practical applications and differences.