# Confict Resolution
- [What can cause a conflict?](#what-can-cause-a-conflict)
- [Strategies for conflict resolution](#strategies-for-conflict-resolution)
- [Provide a step-by-step instruction for how to resolve a conflct](#step-by-step-instruction-for-how-to-resolve-a-conflct)

## What can cause a conflict? 
* Git can handle most merges on its own with automatic merging features. A conflict arises **when two separate branches have made edits to the same line in a file, or when a file has been deleted in one branch but edited in the other**. Conflicts will most likely happen when working in a team environment.

- **Rebasing:** Conflicts may also occur during a rebase operation when Git attempts to apply changes from one branch onto another

## Strategies for conflict resolution
#### Accept Incoming Changes (--theirs):
- Resolve conflicts by accepting all incoming changes from the branch being merged
```bash 
git checkout --theirs path/to/conflicted-file 
```
#### Accept Current Changes (--ours):
``` bash
git checkout --ours path/to/conflicted-file
```
#### **Resolving Conflicts:**
- When conflicts occur, Git pauses and prompts the user to resolve the conflicts manually.

- User needs to edit the conflicted files, choose which changes to keep, and remove the conflict markers.
- After resolving conflicts, the user needs to mark the files as resolved using ```git add [file]```.
- **Completing the Merge or Rebase:** Finally, the user completes the merge or rebase operation using ```git merge --continue``` or ```git rebase --continue```.
#### **Checking for Unresolved Conflicts:**
- Use the ```git status``` command to check for any unresolved conflicts.


#### **Aborting Merge or Rebase:**

- If conflicts are too complex or cannot be resolved, you can abort the merge using ```git merge --abort```.
- Similarly, you can abort a rebase operation using ```git rebase --abort```.


## Step-by-step instruction for how to resolve a conflct
 
Created a new branch called ```his-branch``` and made some changes to the file ```content.txt```. 

Inside them I added a diffent words in both branch files.
After that I merged the ```his-branch``` to the ```main``` branch. Resolved conflict accepting the incoming changes from the ```his-branch``` branch.


# Git merges strategies
----------------------------------------------------------------
---


- [Git non fast-forward merge (A Type of Explicit Merge)](#1-explicit-git-merge-aka-non-fast-forward-merge)
- Git fast-forward merge(A Type of Implicit Merge)
- Git Rebase (Another Type of Implicit Merge)
- Git squash merge (An Explicit Merge followed by rebasing or fast forward)

### 1. Explicit git merge (a.k.a ```non fast forward merge```) 

>Explicit merge creates a **new** commit 
- It is a simple commit with one difference — it has **two parents.** All other regular commits have only one.
- ```git log``` |
> commit 229b6993346adae1e5b095c356b4af11dd1bb9da
Merge: 7222f6a c952e91
Author: Pranay Kumar <pranayaggarwal25@gmail.com>
Date:   Sat Oct 19 20:24:00 2019 +0530
Merge branch 'master' of github.com:pranayaggarwal/enumifier

#### Pros
- Preserves complete history and chronological order
#### Cons
- Commit history can become polluted by lots of merge commits.
- Debugging using ```git bisect``` can become harder.

![Git](https://miro.medium.com/v2/resize:fit:828/format:webp/0*DHmWhgEMZOSW3OVz.gif)
---

### 2. Implicit git merge via fast forward merge

> It can only happen if there are no more commit made in source i.e. *HEAD* is not diverged.

#### Pros
- No extra commit is made so commit history doesn’t get polluted.
- Converges possibly capable of being merged branches in a cleaner way.
#### Cons
- Fast forward merge will still lose some context of those commits as part of an earlier feature branch.


![fast-forward-merge](https://miro.medium.com/v2/resize:fit:828/format:webp/0*GhW5WSCRH1dneU6c.gif)


### How to do git merge

![Explicit vs implicit merges](https://miro.medium.com/v2/resize:fit:828/format:webp/0*6OWQ6E6bT-TmuEvJ.png)

```git merge -no-ff`` --no-ff   - no fast forward










### Additional resources
- [How to Resolve Merge Conflicts in Git?](https://www.simplilearn.com/tutorials/git-tutorial/merge-conflicts-in-git)
- [Git Merge Conflicts](https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts)