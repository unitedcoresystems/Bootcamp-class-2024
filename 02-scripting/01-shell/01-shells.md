# What is a Shell?

A shell is an interpreter that interprets commands for the OS.

Examples:
- `Bash / sh` ---> LinuxOS
- `Powershell` ---> WindowsOS                
- `Zshell` ---> MacOS  

Other shell command interpreters include:
- `csh`
- `ksh`
- `tcsh`
- `zsh`
- `fishsh`                 

Definitions:
- **Bash**: Bourne Again Shell
- **Sh**: Bourne Shell
- **Ksh**: Korn Shell 
- **Fishsh**: Fish Shell 
- **Zsh**: Z Shell 

## How to Install Shells in Linux

For CentOS, Fedora, or RHEL:

```bash
sudo yum install zsh ksh tcsh -y
```

For Debian and ubuntu:

```bash
sudo apt install zsh ksh tcsh -y
``` 
## How to Check the Shells in a Linux OS

- **Demo1**: Lists your current shell.

```bash
echo $SHELL
``` 
- **Demo2**: Lists all available shells installed in your Linux OS.

```bash
cat /etc/shells
``` 

## How to Execute with Shells in a Linux OS

- **Demo3**: Executes `ls` command using bash.
```bash
bash -c ls
``` 

- **Demo4**: Executes `ls` command using sh.
```bash
sh -c ls
``` 
 
- **Demo5**: Executes `ls` command using zsh.
```bash
zsh -c ls
``` 
