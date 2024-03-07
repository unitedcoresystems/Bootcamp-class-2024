### 1. Redirecting Standard Output

Standard output (stdout) is where a program writes its output data. To redirect stdout to a file, you use the `>` operator followed by the name of the file.

Example:

```bash
ls > files.txt
```

This command directs the output of `ls` (which lists the contents of a directory) into `files.txt`, overwriting any existing content.

### 2. Redirecting Errors

Standard error (stderr) is where a program writes its error messages. To redirect stderr to a file, you use `2>` followed by the file name. The number `2` represents the file descriptor for stderr.

Example:

```bash
grep somepattern somefile.txt 2> errors.txt
```

This command tries to find `somepattern` in `somefile.txt`. If `somefile.txt` doesn't exist or another error occurs, the error message will be written to `errors.txt`.

### 3. Redirecting Both Standard Output and Errors

To redirect both stdout and stderr to the same file, you can use `&>` followed by the file name.

Example:

```bash
./yourscript.sh &> output_and_errors.txt
```

This command runs `yourscript.sh` and directs both the output (stdout) and the error messages (stderr) to `output_and_errors.txt`.

### Advanced: Redirecting Stdout and Stderr to Different Files

Sometimes, you might want to separate normal output from error messages. This can be done by redirecting them to different files.

Example:

```bash
command > output.txt 2> errors.txt
```

This command directs stdout to `output.txt` and stderr to `errors.txt`. 

### Keeping the Terminal Output while Redirecting

If you want to keep the output or errors visible in the terminal while also logging them to a file, you can use the `tee` command in combination with process substitution.

For stdout:

```bash
command | tee output.txt
```

For both stdout and stderr:

```bash
command 2>&1 | tee output_and_errors.txt
```

The `2>&1` redirects stderr to stdout, and `tee` writes the output to both the terminal and the file.

These techniques allow you to control where your script's output goes, making it easier to debug and manage the results of your scripts.