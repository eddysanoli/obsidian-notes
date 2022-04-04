## General Remarks
- Officially, when you assign a value in Rust is called "binding"
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
- Floating point: `f32` (`float` in C), `f64` (`double` in C)
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
- You can quickly create an array of a certain size (with the same value for each element) by using the following notation

```rust
// a = [Eelement Name ; Number of elements]
let a = ["Element"; 500];
```
- If you want to slice a variable you can use the `..` once again, along with `&` operator.

```rust
// Original array
let a = [1, 2, 3, 4, 5];

// Slice containing the indexes 1, 2 and 3
// OUTPUT: [2, 3, 4]
let nice_slice = &a[1..4];
```

- Tuple destructuring: You can assign each element of a tuple to different variables.

```rust
let cat = ("Furry McFurson", 3.5);
let (name, age) = cat;
```


## Copying Primitives
If a variable consists of a primitive, you can copy the variable onto another. This is not posible for non-primitive types. For non-primitive types you need to use references (`&`) or 
use the `clone()` method (if the element provides it).

```rust
// This is valid, as we are assigning a primitive type
let x: u32 = 2;
let y = x;

// This will fail, as we are trying to copy a non-primitive type (String)
// into a new variable.
let w = String::from("Hello");
let v = w;

// Correct way of copying the string
// (Using references)
let v = &w;

```


