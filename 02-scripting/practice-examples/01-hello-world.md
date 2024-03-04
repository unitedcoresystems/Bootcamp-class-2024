
### Step 1: Open a Text Editor
You'll need to open a text editor in the terminal where you can write your script. You can use `nano`, `vi`, or any other text editor you feel comfortable with. For beginners, `vi` is usually more user-friendly.

In the terminal, type:
```bash
vi hello_world.sh
```

This will open the `vi` text editor and create a new file named `hello_world.sh`.

### Step 2: Write the Shebang Line
At the top of the file, you need to write the shebang line, which tells the system which interpreter to use to run the script. For a bash script, it looks like this:
```bash
#!/bin/bash
```

Type that line first in the `vi` editor.

### Step 3: Write the Echo Command
Below the shebang line, write the command to print "Hello, World!" to the console:
```bash
echo "Hello, World!"
```

Your `vi` editor should now have the following:
```bash
#!/bin/bash
echo "Hello, World!"
echo "my name is Eli and i love Devops"
echo "Come learn with me"
```

### Step 4: Save the Script
In `vi`, you save a file by pressing `:wq!`, which will save and exit the text editor. 

or 

To save and exit `vi` editor, press `Shift + ZZ`.

### Step 5: Make the Script Executable
Before you can run the script, you need to make it executable. In the terminal, type:
```bash
chmod +x hello_world.sh
```

### Step 6: Run the Script
Now, you can run the script by typing the following command in the terminal:
```bash
./hello_world.sh
```

You should see the output:
```
Hello, World!
```

And there you have it! You’ve just written and executed your first shell script.