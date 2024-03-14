### Module 3: Basic Git Operations

This module dives deeper into the daily use of Git, focusing on essential commands and workflows that enable efficient version control of your projects. By understanding these foundational operations, you'll be able to manage your code changes effectively and collaborate with others more seamlessly.

#### Working with Git Locally (add, commit)

- **Adding Changes**: To track changes to files, you first need to add them to the staging area with the `git add` command. Use `git add <file>` to stage a specific file or `git add .` to stage all modified files in the directory.

- **Committing Changes**: After staging your changes, you commit them to your repository's history with `git commit`. Use the command `git commit -m "Your commit message"` to commit staged changes with a descriptive message. This message should clearly describe what the commit does.

#### Viewing Changes (status, log)

- **Checking Status**: The `git status` command provides information about the current branch, staged changes, and files that are not tracked by Git. It's a useful way to see what needs to be added or committed.

- **Viewing Commit History**: Use `git log` to see a list of commits, including the commit ID, author, date, and message. For a more condensed view, `git log --oneline` shows each commit on a single line.

#### Ignoring Files (.gitignore)

Not all files in your project directory should be tracked by Git (e.g., system files, build outputs, temporary files). To ignore specific files or directories:

- **Creating a .gitignore File**: In your project root, create a file named `.gitignore`. Inside this file, list the files and directories you want to ignore. You can specify single files, directories, patterns (using `*`), and exceptions (with `!` at the start).

- **Example .gitignore Contents**:
  ```
  # Ignore all log files
  *.log

  # But track this specific file, even though it's a .log
  !important.log

  # Ignore the build directory
  /build
  ```

#### Working with Branches

Branches are a powerful feature in Git that allow you to diverge from the main line of development and work independently.

- **Creating a Branch**: Use `git branch <branch-name>` to create a new branch. This doesn't automatically switch to the new branch.

- **Switching Branches**: Use `git checkout <branch-name>` to switch to an existing branch. Git 2.23+ allows `git switch <branch-name>` as a more intuitive alternative for switching branches.

- **Listing Branches**: `git branch` lists all local branches. Add the `-a` flag to see both local and remote branches.

#### Merging and Resolving Conflicts

Merging is how you integrate changes from one branch into another.

- **Merging**: To merge changes from one branch (e.g., `feature`) into another (e.g., `main`), switch to the target branch (`git checkout main`) and use `git merge feature`.

- **Resolving Conflicts**: Sometimes, Git can't automatically merge changes and will report conflicts. Conflicts need to be resolved manually by editing the conflicting files, looking for the `<<<<<<<`, `=======`, and `>>>>>>>` markers, and making the necessary adjustments. After resolving conflicts, you need to stage (`git add`) and commit (`git commit`) the changes.

By mastering these basic Git operations, you'll have a solid foundation for maintaining a clean and efficient workflow in your projects, enabling better collaboration and code management.