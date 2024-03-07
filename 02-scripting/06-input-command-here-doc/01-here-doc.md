# Understanding Here Documents in Bash Scripting

Here Documents (or "heredocs") are a feature of bash scripting that allow you to provide a block of text or commands to a command's standard input. This technique is useful for scripting interactions with commands that accept multi-line string input or for embedding blocks of text directly within a script.

## Basic Syntax of Here Documents

The basic syntax of a Here Document is shown below:

```bash
command <<DELIMITER
text block
DELIMITER
```

- `command` is the command that will receive the text block as input.
- `DELIMITER` is a token that marks the beginning and end of the text block. You can choose any word or symbol for this, as long as it does not appear in the text block.

## Example: Creating a Multi-line File

You can use here documents to create a file with multiple lines of content without using multiple `echo` commands:

```bash
cat <<EOF > greeting.txt
Hello, World!
This is a text file containing multiple lines.
EOF
```

This script uses `cat` in conjunction with a here document to create a file named `greeting.txt`. The file will contain the two lines of text between the `EOF` delimiters.


You can automate this script without modifying it to accept command-line arguments, using a here document to simulate the user inputs:

```bash
sh authenticate.sh <<EOF
Emmanuel
123456789
EOF
```

The script `authenticate.sh` will run, reading the inputs "Emmanuel" and "123456789" as if they were entered by a user, processing them accordingly.


