### 1. Printing to the Terminal

To display text on your terminal, you can use the `echo` command followed by the text you want to print inside quotes.

Example:

```bash
echo "Hello, World!"
```

This command prints the text `Hello, World!` to the terminal.

### 2. Writing to a File

If you want to write text to a file, you can use the `echo` command followed by the text, and then use the `>` operator to direct the text into a file.

Example:

```bash
echo "This is some text." > output.txt
```

This command creates a new file named `output.txt` (or overwrites the file if it already exists) and writes `This is some text.` into it. Be careful with the `>` operator because it replaces any existing content in the file.

### 3. Appending to a File

To add text to the end of a file without removing its existing content, use the `echo` command with the `>>` operator.

Example:

```bash
echo "More text." >> output.txt
```

This command adds `More text.` to the end of the file `output.txt`. If the file does not exist, it will be created.

### 4. Redirecting Output

You can redirect the output of a command to a file instead of displaying it on the terminal. This is useful for saving the output for later use or for processing.

Example:

```bash
ls > files.txt
```

This command runs `ls`, which lists the files and directories in the current directory, and then redirects the list to a file named `files.txt`. If `files.txt` exists, it will be overwritten; otherwise, it will be created.

Each of these examples demonstrates a basic yet powerful feature of bash scripting, allowing you to manipulate text and files directly from the command line.