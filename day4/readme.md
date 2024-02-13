## Advanced Git Concepts

1) Explain the purpose of tags and how to create and manage them.
2) Discuss the concept of rebasing and its use cases.
3) [Compare rebase with merging (hands-on activity)](#compare-rebase-with-merging-hands-on-activity)

### What is the **Git Squash**?
- All feature commits are squeezed into a single commit
- We lose the fine details of individual **feature commits** in the **main branch's commit history**

![alt text](image.png)

- ```git rebase -i HEAD~3 ``` 

Note: Rebase is an action to rewrite commits and their history “-i” is to enter into an interactive mode of rebase HEAD~n states to perform our operation on n commits from HEAD.
- Upon entering the above command we’ll get an interactive editor with all our selected commits which is where we’ll be performing squash.

![image](https://media.geeksforgeeks.org/wp-content/uploads/20230519113409/git-merge-dev.png)

- To squash  2nd and 3rd commit with 1st commit, so we’ll change the first word from pick to squash. whichever commits we want to squash we have to change it to squash from pick 

### What is the **Git Rebase**?
- All in one line
- Merge is always a forward moving change record. Alternatively, rebase has powerful history rewriting features.
- In a background git is actually blowing away the feature branch commits and duplicating them as new commit on top of the master branch (thats why)
- Rebase is **recreating your work from one branch onto another.**

![rebase](https://miro.medium.com/v2/resize:fit:828/format:webp/0*JRt9VF_osaAoVwKg.gif)

### Merge vs Rebase vs Squash
- ```git merge``` gives us complete picture of the commit history and branch evolution
- ```git rebase``` tidies up history by moving commits to the main branch tip
- ```Squashing``` commits consolidates commits into one, providing a clean, linear history in the main branch


### Compare rebase with merging (hands-on activity) 



![alt text](image-1.png)
- ```git checkout feature```
- ```git rebase master```
---
---


![alt text](image-2.png)
- ```git checkout master```
- ```git rebase feature```


---
### Git tag

- ```git tag v1.0.0``` add tag to the commit (in local env)
- ```git push origin main v1.0.0``` push the tag to the remote repo
-  ```git tag -d v1.0.0``` delete tag from local repo
- ```git push origin --delete v1.0.0``` delete tag from remote repo
- ```git tag --annotate (or -a) v1.0.0 <commit id>``` add tag to the commit (in local env)
- ```git push origin --tags``` push all tags to the remote repo


Git supports two types of tags: 
- lightweight
- annotated

**Annotated Tags**

Annotated tags, however, are stored as full objects in the Git database. They’re checksummed; contain the tagger name, email, and date; have a tagging message; and can be signed and verified with GNU Privacy Guard (GPG). It’s generally recommended that you create annotated tags so you can have all this information; but if you want a temporary tag or for some reason don’t want to keep the other information, lightweight tags are available too.

Creating an annotated tag in Git is simple. The easiest way is to specify -a when you run the tag command:
```
git tag -a v1.4
git tag -a v1.4 -m "my version 1.4"
```
The `-m` specifies a tagging message, which is stored with the tag. If you don’t specify a message for an annotated tag, Git launches your editor so you can type it in.

**Lightweight Tags**

This is basically the commit checksum stored in a file — no other information is kept. To create a lightweight tag, don’t supply any of the -a, -s, or -m options, just provide a tag name:
```
git tag v1.4-lw
```