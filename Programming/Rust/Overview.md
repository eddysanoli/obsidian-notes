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
- [[Variables and Primitives]]
- [[Constants]]
- [[Control Flow]]
- [[Functions]]
- [[Methods]]
- [[Generic Types]]


## Ownership

Ownership has three basic rules that predict how memory is stored in the stack and the heap.
1. Each Rust value has a variable called its "owner"
```rust
let x = 5; // x is the owner of the value "5"
```

2. Each value can only have one owner at a time
3. When the owner goes out of scope, the value will be dropped

```rust
fn main() { 

	{ // Scope begins 

	// "s" comes into scope 
	// NOTE: Since its a mutable value, we request for space in the heap, 
	// the size of a String. When the variable goes out of scope, the memory
	// is freed.
	let mut s = String::from("hello"); 
	
	}// the value of s is dropped at this point, it is out of scope 

}
```



## Memory

Rust programs have 3 memory regions where data is stored

- *Data Memory*: Data fixed in size and static. Used for things like the declaration of the text for a string, text thats only ever found in a specific region (eg. `"Hello World!"`).
- *Stack Memory*: For data thats declared as variables within a function. The location of this memory doesnt change during the function call to make it faster to access. 
	- Analogy: Behaves like a stack of books on a table. The last book is placed on top of the stack, and first at the bottom. Ideally, we wouldnt want to slide the bottom book out from under the stack, it would be easier to pick a book from the top.
	- Uses the LIFO method: Last In, First Out (Just like in the analogy)
- *Heap Memory*: For data created while the application is running. Data here can be added, moved, removed and resized. Due to this dynamic behavior, this memory is generally slower. 
	- When data is added here, its called an "allocation". 
	- When its removed its called a "deallocation"
	- When you have a value for which you dont know the exact amount of memory it will require, you request a specific amount of space for the value. The allocator finds a spot in the heap that is big enough and marks that spot as "in use".

## Standard Libraries
**std::io::Result**
Specialized result type for I/O operations. Type broadly used across std::io for any operation that may produce an error. Generally used to avoid writing out "io::Error" directly.



-----

## Commands

**Create New Project**
```bash
# 1. Creates a new project folder
# 2. Creates a `cargo.toml` file
# 3. Initializes it as a git repo
cargo new project-name

# OPTIONS
# --vsc none: Prevent cargo from making the folder a repository
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

**Create a new Cargo Package**
Creates a new cargo manifest in the current directory. 
```bash
# Regular command
cargo init package_name

# Create package with a binary target (src/main.rs). Default
cargo init --bin package_name
```