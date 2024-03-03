Certainly! Here's how you can create the script using `vi`, a widely-used text editor in Unix-like systems:

### Step 1: Open `vi` Text Editor
Open the terminal and type the following command to create a new file and start editing it with `vi`:

```bash
vi greetings.sh
```

### Step 2: Enter Insert Mode
When you first open `vi`, you start in "normal" mode, where you can navigate around the file with the arrow keys. To start inserting text, press `i`. This will put you into "insert" mode.

### Step 3: Write the Shebang Line
Now type in the shebang line to specify the shell interpreter:

```bash
#!/bin/bash
```

### Step 4: Write the Script to List Directory Contents
On a new line, type in the command that lists the contents:

```bash
echo "Good morning Engineers"
whoami
echo "Welcome to United Core systems"
echo "Today is" 
date
```

### Step 5: Save and Exit
To save the file and exit `vi`, you need to go back to "normal" mode and type in the save and quit command:

1. Press `Esc` to return to "normal" mode.
2. Type `:wq` (stands for "write and quit") and press `Enter`.

### Step 6: Make the Script Executable
Before running the script, you must make it executable. In the terminal, type:

```bash
chmod +x greetings.sh
```

### Step 7: Run the Script
Finally, execute the script by typing:

```bash
./greetings.sh
```

This will display a detailed list of all files and directories in the current directory. If you encounter any issues with permissions, make sure you're in a directory where you have appropriate rights, or consider running the script with `sudo` if it's appropriate for your permissions setup.