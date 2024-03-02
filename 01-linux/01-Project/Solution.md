### Prerequisites

- Ensure `git` is installed on your system.
- Have a web server like Apache installed. If not, you can install Apache on Debian-based systems using `sudo apt-get install apache2`.

### Step 1: Clone the Repository

1. **Open Terminal**: Start by opening a terminal window.

2. **Navigate to a Working Directory**: Choose or create a directory where you want to clone the repository. Use `cd` to navigate. For example, to navigate to your home directory, you can use:
    ```bash
    cd ~
    ```

3. **Clone the Repository**: Run the `git clone` command to clone the desired repository into your current directory:
    ```bash
    git clone https://github.com/emortoo/apache-httpd.git
    ```
   This command downloads the `apache-httpd` project files to a directory named `apache-httpd` in your current working directory.

### Step 2: Move the Files

1. **Check Apache's Root Directory**: The default root directory for Apache on most Linux distributions is `/var/www/html/`, but it's good practice to verify this is the case for your setup.

2. **Move the Files**: Use the `cp` command to copy the cloned files into Apache's root directory. The `-r` flag is used to recursively copy directories and their contents. You might need to ensure the destination directory is empty or that you're not overwriting important files:
    ```bash
    sudo cp -r apache-httpd/* /var/www/html/
    ```

### Step 3: Change Ownership of the Directory

1. **Change Ownership**: Apache often runs as the `www-data` user and group. To allow Apache to access and serve the files, change the ownership of the files in the web root directory:
    ```bash
    sudo chown -R www-data:www-data /var/www/html/
    ```
   This command recursively (`-R`) changes the owner and group of all files in `/var/www/html/` to `www-data`.

### Step 4: Verify the Web Server Content

1. **Restart Apache**: To ensure Apache recognizes the changes, restart the service:
    ```bash
    sudo systemctl restart apache2
    ```

2. **Verify in a Web Browser**: Open a web browser and navigate to `http://localhost/` or `http://<your-server-ip>/`. You should see the content you just moved to the Apache root directory.
