By using modules in Rust you are able to separate your code into organised sections.

---------

## Visibility
Generally, modules are used to place a specific group of functions inside. However, said functions are private by default. This means that they cannot be called by the user from a regular function

```rust
// Module creation with one function inside
mode my_module {

	fn chicken() {
		println!("Chicken!");
	}
}

// Error! 
// The user wont be able to call the function from here
// as its visibility is private by default.
fn main() {
	my_module::chicken();
}

```

To change this, you have to add the `pub` keyword to the function inside the module.

```rust
// Module creation with one function inside
mode my_module {

	fn sound() {
		println!("Cluck");
	}

	// The public function is able to call private functions
	// from within the module
	pub fn chicken() {
		sound();
		println!("Chicken!");
	}
}

// Correct!
fn main() {
	my_module::chicken();
}

```

Note: Keep in mind that, even though the main function isn't able to call the "sound" function, the "sound" option can be called from within the module by the "chicken" function, meaning that you can call private module functions from public function calls.


## Import
You can use `mod` as a way to import functions from other files. You simply have to declare the functions in the other file as "public" (`pub`), and import said files by using `mod`, followed by the filename (without the extension).

*main.rs*
```rust
mod my_module;

fn main() {
	my_module::run();
}
```

*my_module.rs*
```rust
pub fn run() {
	println!("This is a function from another file!");
}
```

Note: By default, if you use "mod my_module" Rust will search for a file called "my_module.rs". If it doesnt find it, then it will look for a file name "mod.rs" inside a folder called "my_module".