Tests are important to ensure that your code does what you think it should do. For example, it can ensure that a certain variable has a specific value. All `assert` statements only raise errors if they are not true when evaluated.

When you get an abrupt termination from a non-successful assert statement, you get a `panic`.

We can change a regular function into a test function by adding a `test` attribute on the line before `fn`.

```rust
#[test]
fn run() {
	// Run code
}
```

You can also create a test module (see [[Modules]]) by using the following structure
```rust
#[cfg(test)]
mod tests {

    #[test]
    fn test() {
        assert!(// Condition goes here);
    }
}
``` 

-------------------

## Equality
Check if the two arguments of the assertion are equal
```rust
assert_eq!(10, 11);
```

## Truth
Check if a specific value is true or false
```rust
assert!(true);
```

## Debug
Regular assert statement that's skipped when the program is compiled for speed
```rust
debug_assert!(true);
```

