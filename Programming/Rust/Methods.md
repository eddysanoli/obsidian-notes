- Static methods: Methods that belong to a type. Called using the `::` operator
- Instance methods: Methods that belong to an instance of a type. Basically like calling a property or method in Python. Called using the `.` operator.

Example:
```rust

fn main() {
    // Using a static method to create an instance of String
    let s = String::from("Hello world!");
    
    // Using a method on the instance
    println!("{} is {} characters long.", s, s.len());
}

```
