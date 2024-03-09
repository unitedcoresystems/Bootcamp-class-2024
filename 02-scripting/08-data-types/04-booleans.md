### Booleans

Bash does not have a native Boolean data type, but it typically uses exit statuses to represent true and false conditions. A command that finishes successfully has an exit status of 0 (`true`), and a non-zero exit status (`false`) represents failure.

Example:
```bash
myBool=true
if $myBool; then
    echo "This will print."
fi
```

In the script above, `$myBool` is just a string that happens to be `true`, which is also the name of a Bash command that always returns a status of 0, making the condition "true".

