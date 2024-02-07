# Confict Resolution
- [What can cause a conflict?](#what-can-cause-a-conflict)
- [Strategies for conflict resolution](#strategies-for-conflict-resolution)
- provide a step-by-step instruction for how to resolve a conflct

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










### Additional resources
- [How to Resolve Merge Conflicts in Git?](https://www.simplilearn.com/tutorials/git-tutorial/merge-conflicts-in-git)
- [Git Merge Conflicts](https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts)