Take a commit from another branch, and place it on top of the current branch.

```bash

git cherry-pick commithash

```

Use:

```bash

# Change to branch in which you want to place the commit at the top
git switch targetBranch

# Place the commit on top of the branch
git cherry-pick commitHash

```
