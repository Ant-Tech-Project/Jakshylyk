## Version Control

#### Definition:
[Version control](https://www.techtarget.com/whatis/definition/version-control) is a system that records changes to a file or set of files over time. It allows you to recall specific versions later, providing a historical perspective on how data has evolved.

#### Purpose:
- **Ensuring Planned Changes:** Version control ensures that content changes under development go as planned.
- **Branching:** Programs in development can be copied for parallel development using branching, enabling the retention of the original while working on different versions.

#### Features:
- **Track History:** Easily view how a file has evolved over time and revert to previous versions if needed.
- **Collaboration:** Facilitates simultaneous work on projects by multiple contributors without conflicts.

# Git

#### Purpose and Features:
1. **Purpose of Git:**
   - **Distributed Version Control:** Git is designed for distributed version control, allowing multiple developers to work on a project simultaneously.
   - **Efficient Collaboration:** Facilitates collaborative work with a distributed team without a centralized server.
   - **Branching and Merging:** Git provides robust branching and merging capabilities, allowing parallel development and seamless integration of changes.

2. **Features of Git:**
   - **Local Operations:** Most operations in Git are local, enabling users to work offline and commit changes locally before pushing to a remote repository.
   - **Data Integrity:** Git uses a secure hashing algorithm (SHA-1) to ensure data integrity.
   - **Staging Area:** The staging area allows users to selectively choose which changes to include in the next commit.

### Drawbacks of Not Using Version Control

[Not using version control](https://www.foxsoft.co.uk/business-risk-version-control/#:~:text=Having%20a%20VCS%20is%20is,or%20even%20days%20or%20weeks.) introduces business risks such as:
- Loss of data due to accidental overwrites or deletions.
- Difficulty in tracking changes and understanding project history.
- Increased chances of collaboration conflicts.
- Limited ability to revert to previous versions or identify the source of issues.

## Centralized vs Distributed Version Control

- **Centralized Version Control:**
  - Uses a central server to store the repository.
  - Requires a constant connection to the central server for most operations.
  - Examples include CVS and Subversion.

- **Distributed Version Control:**
  - Each user has a complete copy of the repository.
  - Allows offline work with local repositories.
  - Git and Mercurial are examples.

## Installing Git on Different Operating Systems

- **Linux:**
  - Use the package manager (e.g., `apt` for Ubuntu, `yum` for CentOS).

- **Mac:**
  - Install using Homebrew: `brew install git` or download from the official website.

- **Windows:**
  - Download and run the installer from the official Git website.

## Git Commands

#### `git init`

- Initializes a new Git repository.
- Creates a `.git` subfolder to store configuration files.
- Enables version control, tracking changes, branching, and collaboration.
- Most other Git commands are not available outside of an initialized repository, so this is usually the first command you'll run in a new project.

- After running this command, your project directory becomes a Git repository. You can now start adding files, making commits, and utilizing Git's version control features.

#### `git commit`

- Records changes made to the repository.
- Captures a snapshot of changes, adding them to version history.

- Prior to the execution of git commit, the git add command is used to promote or **'stage'** changes to the project that will be stored in a commit
- You commit it to the project history with ```git commit```. The git reset command is used to undo a **commit or **staged** snapshot.


#### `git add`

- Adds a change in the working directory to the <font color="orange">**staging area**</font>
- ```git add``` doesn't really affect the repository in any significant way—changes are not actually recorded until you run ```git commit```

- It tells Git that you want to include updates to a particular file in the next commit


## [Staging Area](https://www.developernation.net/blog/git-internals-part-3-understanding-the-staging-area-in-git)

The staging area in Git is an intermediate step between modified files and committing changes. It allows users to selectively choose which changes to include in the next commit. Before committing changes, files are added to the staging area using `git add`. This enables users to review and organize modifications before finalizing them with `git commit`. The staging area facilitates a more controlled and organized approach to version control.