### Arrays

Bash supports indexed arrays and associative arrays (Bash version 4 and above). Indexed arrays use integers as the index, while associative arrays use strings.

Example of an indexed array:
```bash
myArray=(apple banana cherry)
echo ${myArray[1]}  # Outputs: banana
```
