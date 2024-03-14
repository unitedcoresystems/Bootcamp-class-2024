### Module 2: Getting Started with Git

This module introduces participants to Git, focusing on installation, basic configuration, command line usage, and creating a Git repository. By the end of this module, learners will be able to set up Git on their machines, configure it for their personal use, navigate the Git command line, and initialize their first Git repository.

#### Installing Git

1. **Download Git**: Visit the official Git website ([git-scm.com](https://git-scm.com/)) and download the version of Git appropriate for your operating system (Windows, macOS, or Linux/Unix).

2. **Installation Process**:
   - **Windows**: Run the downloaded `.exe` file and follow the installation wizard. Install with the default options unless you have specific preferences.
   - **macOS**: Use the downloaded `.dmg` file to install Git. Alternatively, you can install Git using Homebrew by running `brew install git` in the terminal.
   - **Linux/Unix**: Git might already be installed. If not, you can install it using your distribution's package manager, for example, `sudo apt-get install git` for Ubuntu or `sudo yum install git` for Fedora.

3. **Verify Installation**: Open a terminal or command prompt and type `git --version` to verify that Git is installed correctly. You should see the installed version of Git as output.

#### Basic Configuration of Git

After installing Git, configure it to recognize you as the user of the machine on which it's installed. This step is crucial for Git to track who is making changes.

1. **Set Your Username**: Run `git config --global user.name "Your Name"` to set the username that will be associated with your Git commits.

2. **Set Your Email Address**: Run `git config --global user.email "youremail@example.com"` to set the email address associated with your Git commits. Use the same email address associated with your GitHub or other Git hosting service account, if you plan to use one.

3. **Check Configuration**: Run `git config --list` to check your configuration settings.

#### Introduction to the Git Command Line

The Git command line is the primary interface for interacting with Git. Here are a few basic commands to get started:

- **`git init`**: Initializes a new Git repository.
- **`git status`**: Shows the status of changes as untracked, modified, or staged.
- **`git add`**: Adds changes to the staging area, preparing them to be committed.
- **`git commit`**: Commits the staged changes to the repository history.
- **`git log`**: Shows the commit history for the current branch.

#### Creating Your First Git Repository

1. **Create a New Directory**: Open a terminal, navigate to where you want to create your project, and run `mkdir MyProject` to create a new directory.

2. **Initialize the Repository**: Navigate into the project directory using `cd MyProject`, then run `git init` to initialize a new Git repository. This command creates a new subdirectory named `.git` that houses all of your project's version control information.

3. **First Commit**:
   - Create a new file in the directory, for example, `echo "Hello Git" > hello.txt`.
   - Run `git add hello.txt` to stage your new file.
   - Commit your changes with `git commit -m "Initial commit"`.

Congratulations! You've just created your first Git repository and made your first commit. This module sets the foundation for more advanced Git operations and workflows, which you'll explore in subsequent modules.