Each function in rust is considered an **item**. An item refers to a unit of code, unlike variables which refer to a particular value. Items can be called before or after they have been declared, meaning that you can place your functions both before or after the main loop.

--------------

## Parameter and Return Types
Type inference for functions is available, however, its disabled by default as an intentional language design choice. This means that you **have** to specify the type of input parameters. The return type is optional as it can be inferred many times.
```rust
// You must specify the type of the parameters and returns
fn add(x: i32, y: i32) -> i32 {
	return x + y;
}
```


## No Return Statement
If the last "command" inside a function doesn't have a semicolon at the end, it is interpreted as the return value for the function. It's typical in Rust to use this notation when you reach the end of the function. An explicit return is generally used for early returns from the midst of a function.
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

## Generic Functions
Very similar to a function template in C++. It allows us to define an entire family of functions at once.

```rust
fn parse_pair<T: FromStr>(s: &str, separator: char) -> Option<(T, T)> {

}
```
In this case, the clause `<T: FromStr>` can be read as "For any type T that implements the FromStr trait". This effectively lets us define functions for multiple types at once:

- parse_pair::<i32>: Parses pairs of i32 values
- parse_pair::<f64>: Parses pairs of f64 values 
- ...

Basically defines the function for all numeric types in Rust.