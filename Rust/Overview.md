# Rust Overview
- rustc: Compiler that takes rust code and compiles it into binary code (Machine code).
- rustup: CLI for rust
- cargo: Build system and package manager

NOTE: You have to execute VSCode as administrator for the Rust CLI to work

-------

## Files
- `cargo.toml`: Similar to a `package.json` file in javascript application
- `/src/`: Folder with the source code for the application

------------

## Syntax
- [[Variables]]
- [[Constants]]
- [[Control Flow]]
- [[Functions]]
- [[Methods]]
- [[Generic Types]]


## Memory

Rust programs have 3 memory regions where data is stored

- *Data Memory*: Data fixed in size and static. Used for things like the declaration of the text for a string, text thats only ever found in a specific region (eg. `"Hello World!"`).
- *Stack Memory*: For data thats declared as variables within a function. The location of this memory doesnt change during the function call to make it faster to access.
- *Heap Memory*: For data created while the application is running. Data here can be added, moved, removed and resized. Due to this dynamic behavior, this memory is generally slower. 
	- When data is added here, its called an "allocation". 
	- When its removed its called a "deallocation"

-----

## Commands

**Create New Project**

```bash
# 1. Creates a new project folder
# 2. Creates a `cargo.toml` file
# 3. Initializes it as a git repo
cargo new project-name
```

**Run application**

```bash
# Run and compile your code
cargo run
```

**Compile a Specific File**

```bash
# Compile the file provided as a binary
rustc ./src/main.rs

# NOTE: The resulting file will be placed in the working directory as an "extensionless" file with the name of the original .rs file
```

