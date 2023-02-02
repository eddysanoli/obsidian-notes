## If / Else
- No parenthesis for the conditions required
- All your usual relational and logical operators still work: `==`, `!=`, `<`, `>`, `<=`, `>=`, `!`, `||`, `&&`.
- If the last statement of a condition is an expression without a `;`, rust will return it as a value. This is a concise way to create a **ternary operator**.

```rust

// No return
if x < 42 {
   println!("less than 42");
} 
else if x == 42 {
   println!("is 42");
} 
else {
   println!("greater than 42");
}

// With return
let v = if x < 42 { -1 } else { 1 };

```

-----------

## Loop

- Infinite loop that will continue forever until it finds a `break` statement
- Break can return a value when executed

```rust

// Simple loop
loop {
	x += 1;
	if x == 42 {
		break;
	}
}

// Loop that returns a value
let v = loop {
    x += 1;
    if x == 13 {
 	   break "found the 13";
    }
};

```

----------------

## While

```rust
while x != 42 {
	x += 1;
}
```

------------

## For Loop
- Iterates over values from any expression that evaluates into an iterator.
- The `..` operator creates an iterator that generates numbers from a start number up to but not including an end number.
- The `..=` operator creates an iterator that generates numbers from a start number up to and including an end number.

```rust

// Loop from 0 to 4
for x in 0..5 {
    println!("{}", x);
}

// Loop from 0 to 5
for x in 0..=5 {
    println!("{}", x);
}
```

-------------

## Match
- Switch case alternative
- Exhaustive. All cases must be handled
- If the last statement in a "case" is an expression without `;`, rust will return it as a value.

```rust

// No return
match x {

	// Match against single element
    0 => {
 	   println!("found zero");
    }
    
    // Match against multiple values
    1 | 2 => {
 	   println!("found 1 or 2!");
    }
    
    // Match against ranges
    3..=9 => {
 	   println!("found a number 3 to 9 inclusively");
    }
    
    // Bind the matched number to a variable
    matched_num @ 10..=100 => {
 	   println!("found {} number between 10 to 100!", matched_num);
    }
    
    // Default match that must exist if not all cases are handled
    _ => {
 	   println!("found something else!");
    }
}

// With return
// Braces are optional when its just a single return expression
let result = match food {
   "hotdog" => "is hotdog",
   _ => "is not hotdog",
};

```

---------------

## Functions
```rust
```
