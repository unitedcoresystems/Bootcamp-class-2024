```bash
#!/bin/bash

echo "My name is $USER, I am currently logged in as $LOGNAME, my current shell is $SHELL, and my default home path is $HOME"
```

This script will print a message to the terminal using four important system-defined variables:

- `$USER` gives the name of the current user.
- `$LOGNAME` also provides the current user's login name. It's often the same as `$USER`.
- `$SHELL` specifies the path to the current user's shell, such as `/bin/bash`.
- `$HOME` indicates the current user's home directory path.

By running this script, a user can quickly find out their username, login name, which shell they are using, and the path to their home directory, showcasing the utility of system-defined variables in bash scripting.