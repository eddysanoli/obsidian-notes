# Commands

## General Purpose
### cat
Allows the user to print on the console all the contents of the file.
```bash
cat filename.txt
```

### source
Executes the content of a file as an executable. It can even read variables from a file.

```bash
source file.txt [PARAMS]
source file.sh [PARAMS]
```

### find
Finds elements in the file system that contain the required paramenter

```bash
# Search for files with the substring "string"
find / -inname "string"
```

## NPM

### Run Typescript
Instead of compiling your Typescript and then running the generated Javascript, you run your Typescript script.
```bash
npx ts-node script.ts
```
## Git

### Rewrite history
You pushed an unwanted file into your remote. This is how to undo it
```bash
# Install git filter repo
pip install git-filter-repo

# Rewrite history
# You can add a "--force" flag if your branch is not a clean clone
git filter-repo --invert-paths --path <path to the file or directory>
```

[[Git Tree]]: Display git commands like a graph tree
[[Git Cherry-Pick]]: Put a commit from another branch on top of the current one.