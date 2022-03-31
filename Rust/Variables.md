## General Remarks
- Variables are written in "snake_case"
- Create a variable: `let x = 13`
- Rust guesses the type of the variable, but you can give a type: `let x: u32 = 13`
- Numeric types can be specified by appending the type to the end of the number: `let x = 12u8`

------

## Modifiable Status
Rust cares about what variables are modifiable:

- Mutable: Can read and write. `let mut x = 43`
- Inmutable: Can only be read. Variables are declared as inmutable by default.


## Types

- Bool: `true` / `false`
- Usigned integers: `u8`, `u16`, `u32`, `u64`, `u128`
- Signed integers: `i8`,` i16`, `i32`, `i64`, `i128`
- Pointer sized integers: For representing indexes and sizes of things in memory. `usize` and `isize`.
- Floating point: `f32`, `f64`
- Tuple: Fixed sequences of values on the stack. `(value, value, ...)`
- Arrays: Collection of similar elements with fixed length known at compile time. `[value, value, ...]`
- Slices: A collection of similar elements with a length known at runtime.
- str: String slices. Text with a length known at runtime. `str`


## Casting
You cannot operate different types together, even things like `u8` and `u16` will return an error. Cast one type to not get any errors:
```rust

let a = 13u8;
let b = 7u32;

// Cast the u8 variable to u32 before operating
let c = a as u32 + b;

```


## Arrays
- Fixed length collection of data. The dynamic length counterpart is called `Vector`
- You must specify the type and length: `let nums: [i32; 3] = [1, 2, 3]`
- Indexes start at 0. Index using brackets: `nums[1]`