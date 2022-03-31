## Parameter and Return Types
You can specify the type of the parameters and returns
```rust
// You must specify the type of the parameters and returns
fn add(x: i32, y: i32) -> i32 {
	return x + y;
}
```


## No Return Statement
If the only argument in the function is a return, you can remove the ";" and return statements
```rust
fn subtract(x: i32, y: i32) -> i32 {
    x - y
}
```


## Multiple Returns
If multiple returns are required, you can return a tuple
```rust
fn swap(x: i32, y: i32) -> (i32, i32) {
    return (y, x);
}

// Access the elements of the tuple by using dot indexing
let result = swap(123, 321);
println!("{} {}", result.0, result.1);
```


## Unit Returns
If no return exists on the function, it will return an empty tuple or  "unit"
```rust
fn make_nothing2() {
    // Empty
}
```