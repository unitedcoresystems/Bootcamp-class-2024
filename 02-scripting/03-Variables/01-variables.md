### Variables Overview
- **Variables** can be defined by either the user (User Defined Variables, UDV) or the system (System Defined Variables, SDV). To reference a variable, you use `$variableName`.
- **User Defined Variables (UDV):** These are created by users or administrators. They are typically used in scripts or the command line to store values that the script or user will use.
- **System Defined Variables (SDV):** These come predefined with the operating system. They are usually in uppercase (e.g., `SHELL`, `HOME`) and can be listed using the `env` command or referenced individually (e.g., `echo $SHELL`).

### Step-by-step Instructions

1. **Create a new user called Michael:**
   ```bash
   sudo useradd Michael
   ```
   This command creates a new user named Michael.

2. **Check if the user has been created:**
   ```bash
   sudo tail -2 /etc/passwd
   ```
   This checks the last two entries in the `/etc/passwd` file, where user account information is stored, to confirm Michael's creation.

3. **Create a group called Tesla:**
   ```bash
   sudo groupadd Tesla
   ```
   This creates a new group named Tesla.

4. **Check if the group has been created:**
   ```bash
   sudo cat /etc/group
   ```
   This displays the contents of the `/etc/group` file, where group information is stored, to verify Tesla's creation.

5. **Add user to the Tesla group:**
   ```bash
   sudo usermod -aG Tesla Michael
   ```
   Adds Michael to the Tesla group. The `-aG` option appends the user to the specified group(s).

6. **Add Michael to the sudoers group:**
   ```bash
   sudo echo "Michael ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/Michael
   ```
   This command gives Michael sudo privileges without requiring a password. It's done by adding a new file under `/etc/sudoers.d/` directory with the necessary permissions. Note that for security and syntax correctness, this method might not work directly due to how piping and `sudo` interact. A safer approach is to use `sudo visudo -f /etc/sudoers.d/Michael` and manually add the line `Michael ALL=(ALL) NOPASSWD:ALL`.

7. **Create a file named deploy.sh:**
   ```bash
   vi deploy.sh
   ```
   or
   ```bash
   touch deploy.sh
   ```
   Both commands are aimed at creating a new file named `deploy.sh`. `vi deploy.sh` opens the file in the Vi editor, allowing you to edit it immediately, while `touch deploy.sh` simply creates the file without opening it.

Each step is an essential part of Unix/Linux user and group management, showing how to add users, check system files for these changes, create groups, add users to groups, grant sudo privileges, and create a file.