Let's create a script that will make a directory and then create two subdirectories within it. 

Here's how you can write this script step by step using `vi`:

### Step 1: Open `vi` Text Editor
Open the terminal and type the following command to start editing a new file with `vi`:

```bash
vi make_dirs.sh
```

### Step 2: Enter Insert Mode
After `vi` opens, press `i` to enter insert mode, allowing you to type your script.

### Step 3: Write the Shebang Line
At the top of the file, type the shebang line to define the shell interpreter:

```bash
#!/bin/bash
```

### Step 4: Add a Comment
Type a comment to describe what the script does:

```bash
# This script creates a directory and two nested subdirectories.
```

### Step 5: Write the Commands to Create Directories
Let's write the commands to create one main directory and then two subdirectories within it:

```bash
# Create the main directory
mkdir my_directory

# Create the first subdirectory
mkdir my_directory/subdir1

# Create the second subdirectory
mkdir my_directory/subdir2
```

Now, your `vi` editor should contain the following script:

```bash
#!/bin/bash
# This script creates a directory and two nested subdirectories.

# Create the main directory
mkdir my_directory

# Create the first subdirectory
mkdir my_directory/subdir1

# Create the second subdirectory
mkdir my_directory/subdir2
```

### Step 6: Save and Exit
To save the file and exit `vi`:

1. Press `Esc` to switch back to normal mode.
2. Type `:wq` to write the changes to the file and quit `vi`.

### Step 7: Make the Script Executable
To make your script executable, enter this command in the terminal:

```bash
chmod +x make_dirs.sh
```

### Step 8: Run the Script
Finally, run the script by typing:

```bash
./make_dirs.sh
```

The script will create a directory named `my_directory` in the current location, with two subdirectories inside it named `subdir1` and `subdir2`. 
If the directories already exist, `mkdir` will print an error message; you could add the `-p` parameter to `mkdir` to prevent this and make the command idempotent.