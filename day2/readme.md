## Git Branching and Merging
-  [Introduce the concept of remote repositories.](#git-remote-repositories)
-  [Discuss commands like git clone, git push, and git pull](#git-push-pull-clone)
-  [Explain the concept of branches and their importance.](#git-branch-concepts)
-  [Demonstrate creating, switching, and deleting branches.](#creating-switching-deleting-branches)
- [How to recover deleted branch](#how-to-recover-deleted-branch)

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

## Creating, switching, deleting branches

### ```git checkout``` - "checking out" a branch

- ```git checkout``` is used to switch between branches.

- The difference between the ```git clone git checkout``` commands is that ```clone``` works to fetch code from a remote repository, alternatively ```checkout``` works to switch between versions of code already on the local system.

```bash 
git checkout -b ＜new-branch＞
```
- It will create the new branch and immediately switch to it.
- In a background its run ```git branch new-branch``` and ```git checkout new-branch```

### [Deleting a GIT local branch](https://refine.dev/blog/git-delete-remote-branch-and-local-branch/#deleting-a-git-local-branch)
- ```git branch -d "branch name"``` Only removes the branch if it is fully merged in its parent branch. If you have unmerged changes, then it will not remove the branch, and you will get an error.You will need to forcibly remove the branch if you want to delete the branch, irrespective of the merge status. You can use the below command to remove the local branch forcibly: ```git branch -D <branchName>``` (--delete --force)

### Deleting a Git remote branch
- ```git push origin -d "branch name" ``` - To delete a branch from the remote repository.


### How to recover deleted branch
- Use git reflog command and find the SHA1 for the commit at the tip of your deleted branch, then just git checkout [sha] . And once you're at that commit, you can just git branch branchname <SHA> to recreate the branch from there.
![Markdown Logo](https://refine.ams3.cdn.digitaloceanspaces.com/blog/2022-11-27-git-delete/git-delete-branch-8.png)
---

### How to automatically delete a branch when it is merge back into master
To avoid dangling branches, you can set up the configuration so that your branch will be automatically deleted as soon as it is merged into its parent branch e.g. Master branch

1. On GitHub.com, go to the home page of the repository.
2. Under your repository name, click Settings.
3. Under "Pull Requests", select or unselect Automatically delete head branches.

![Markdown Logo](https://refine.ams3.cdn.digitaloceanspaces.com/blog/2022-11-27-git-delete/git-delete-branch-9.png)
---