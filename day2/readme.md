Day 2: Git Branching and Merging
1) Introduce the concept of remote repositories.
2) Discuss commands like git clone, git push, and git pull
3) Explain the concept of branches and their importance.
   - Lightweight moveable pointer
4) Demonstrate creating, switching, and deleting branches.
5) Discuss the merging process in Git.

## Git remote repositories
- Remote repositories are versions of your project that are hosted on the Internet or network somewhere.

- Collaborating with others involves managing these remote repositories and pushing and pulling data to and from them when you need to share work.

## Git branch concepts
- In Git, a branch is a new/separate version of the main repository.
- A branch is a parallel version of the repository.
- A branch is a parallel version of the repository.
- Changes made on one branch do not affect the other.

- Branches are used to develop new features, fix bugs, or make improvements to the code without affecting the main code.

---
#### ```git clone```
- Used to target an existing repository and **create a clone**, or **copy of the target repository**. 

- Cloning is generally a one-time operation. Once a developer has obtained a working copy, all **version control operations and collaborations are managed through their local repository**.
- It has its own history, manages its own files, and is a completely isolated environment from the original repository.
### Clone specific branch

```bash
git clone --branch develop https://github.com/example/repo.git
```
### Clone a specific Tag
```bash
git clone --branch v1.0 https://github.com/example/repo.git
```

---

#### ```git push```
- Used to upload local repository content to a remote repository.

- Transfer commits from your local repository to a remote repo
-  Remote branches are configured using the ```git remote``` command
- ```git push``` can be considered and **'upload'** command whereas, ```git fetch``` and ```git pull``` can be thought of as **'download'** commands
-  Do not use the ```--force``` flag unless you’re absolutely sure you know what you’re doing.

- **Purpose:** Is to share the modifications with remote team members
![Markdown Logo](https://wac-cdn.atlassian.com/dam/jcr:0d181327-3fb0-44ec-9ab4-d6dea0fd406f/01%20Git%20push%20discussion.svg?cdnVersion=1431)
---

### ```git pull``` vs ```git fetch```

- ```git pull``` copies changes from a remote repository directly into your working directory
- ```git pull``` is really two operations combined into one: the git fetch and the git merge commands.
- **BENEFITS:**
    - The local Git repo is now in sync with the remote repo.
    - The local filesystem has the latest, most up to date files.
---
---
- ```git fetch``` command only copies changes into your local Git repo
- ```git fetch``` updates your local repo with all of the latest changes from a remote repo but doesn’t make any changes to your local workspace
- The benefit of the ```git fetch``` vs ```git pull``` is that a fetch enables you to continue editing files in your local working directory without having to merge your code with updates from the remote repo.

- If you want to pull down the latest changes from a remote repository without overwriting anything in your working directory, then use git fetch, and then do a git merge when the time is right.

![Markdown Logo](https://itknowledgeexchange.techtarget.com/coffee-talk/files/2023/05/git-fetch-vs-merge.gif)