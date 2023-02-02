A trait is a collection of methods that types can implement. 

### Example
Any type that implements the "FromStr" trait has a "from_str" method that tries to parse a value of that type from a string. Altough we never use the name "FromStr" elsewhere in the program, a trait must be in scope in order to use its methods.
```rust
// We bring the trait "FromStr" into scope
use std::str::FromStr;

// We use the trait "from_str"
u64::from_str("3");

```