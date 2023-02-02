## Definition
Generic types allow us to partially define a `struct` or `enum`, enabling a compiler to create a fully defined version at compile-time based off our code usage. Rust can generally infer the type by looking at our instantiation, but you can be explicit using the `::<T>` operator, or "Turbofish" operator.

```rust

// A partially defined struct type
// (The item inside lacks a specific type)
struct BagOfHolding<T> {
    item: T,
}

fn main() {
    // Note: by using generic types here, we create compile-time created types. 
    // Turbofish lets us be explicit.
    let i32_bag = BagOfHolding::<i32> { item: 42 };
    let bool_bag = BagOfHolding::<bool> { item: true };
    
    // Rust can infer types for generics too!
    let float_bag = BagOfHolding { item: 3.14 };

	// We can place a "bag of holding" inside another
    // Note: never put a bag of holding in a bag of holding in real life
    let bag_in_bag = BagOfHolding {
        item: BagOfHolding { item: "boom!" },
    };

    println!(
        "{} {} {} {}",
        i32_bag.item, bool_bag.item, float_bag.item, bag_in_bag.item.item
    );
}

```

-------------

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


