Functions that do anything which might fail, such as doing input or output or otherwise interacting with the operating system, return a `Result` value that indicates whether the parse succeeded or failed. 

A `Result` value is one of two variants:
- A value written `Ok(v)`, indicating that the parse succeeded and `v` is the value produced
- A value written `Err(e)`, indicating that the parse failed and `e` is an error value explaining why.

Any function of this nature can return `Result` types whose `Ok` variants carry successful results, the count of bytes transferred, the file opened, and so on; and whose `Err` variants carry an error code indicating what went wrong.

Unlike modern languages, Rust does not have exceptions: all errors are handled using either `Result` or `panic`.

## Example
```rust
// Parse command-line args as an u64 int
// "from_str()" function doesnt return a u64 directly, but rather a "Result" value
// that indicates whether the parse succeeded or failed. 
 numbers.push(u64::from_str(&arg).expect("Error parsing argument."))
```

