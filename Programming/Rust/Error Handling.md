Functions that do anything which might fail, such as doing input or output or otherwise interacting with the operating system, return a `Result` value that indicates whether the parse succeeded or failed. 

A `Result` value is one of two variants:
- A value written `Ok(v)`, indicating that the parse succeeded and `v` is the value produced
- A value written `Err(e)`, indicating that the parse failed and `e` is an error value explaining why.

Any function of this nature can return `Result` types whose `Ok` variants carry successful results, the count of bytes transferred, the file opened, and so on; and whose `Err` variants carry an error code indicating what went wrong.

Unlike modern languages, Rust does not have exceptions: all errors are handled using either `Result` or `panic`.

## Example 1 
Using "expect" to display a specific error when a method that returns a Result fails
```rust
// Parse command-line args as an u64 int
// "from_str()" function doesnt return a u64 directly, but rather a "Result" value
// that indicates whether the parse succeeded or failed. If the parse fails, an
// error with the text "Error parsing argument" is returned
 numbers.push(u64::from_str(&arg).expect("Error parsing argument."))
```

## Example 2
Handling success and failure individually by using a match statement
```rust
let output = match File::create(filename) { 
	Ok(f) => f, 
	Err(e) => { 
		return Err(e); 
	} 
};
```

## Example 3
Shorthand for the use of a match statement (shorthand for the method presented in example 2).
```rust
let output = File::create(filename)?
```

NOTE: Never use the "?" operator in the main function. The main function doesn't return a value, so this doesn't work. In the main function, the use of a match statement (or a shorthand method like "unwrap" or "expect") is required. There's also the option of making the main function return a "Result".