Rust's growable vector type, analogous to C++'s vector, a Python list or a Javascript array. Its worth mentioning that even though vectors are designed to be grown and shrunk dynamically, we must still mark the variable `mut` for Rust to let us push numbers onto the end of it.

We can declare the type of a vector using `Vec<type>`

## Example
```rust
// Create a growable array of u64 numbers
let mut numbers = Vec<u64>::new();
```