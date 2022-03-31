## Structures
- Collection of fields, where a field is a data value associated with a data structure. Basically a "key-value" pair.
- Blueprint for a compiler on how to layout the fields in memory nearby each other.

```rust

// Simple struct
struct SeaCreature {

    // String itself is a struct
    animal_type: String,
    name: String,
    arms: i32,
    legs: i32,
    weapon: String,
}


```

- You can create structs that are used like a tuple, simply passing all arguments in order. 

```rust

// Tuple-like struct
struct Location(i32, i32);

fn main() {

    // This is still a struct on a stack
    let loc = Location(42, 32);
    println!("{}, {}", loc.0, loc.1);
}

```

- If a struct returns an empty tuple, its refered as a "unit-like" struct

```rust

// Unit-like struct
struct Marker;

fn main() {
    let _m = Marker;
}

```


## Enumerations
- Create a new type that can have a value of several tagged elements using the enum keyword. Similar to a list of options. 
- "Enum" elements can also have one or more data types, allowing them to behave like a C [[Union]]. When an "enum" is pattern matched using `match`, you can bind a variable name to each data value

```rust

match ferris.weapon {

	Weapon::Claw(num_claws,size) => {
 	    let size_description = match size {
 		    Size::Big => "big",
 		    Size::Small => "small"
 	    };
	    println!("ferris is a crab with {} {} claws", num_claws, size_description)
    },
    
    _ => println!("ferris is a crab with some other weapon")

}

```
