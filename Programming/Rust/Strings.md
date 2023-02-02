

## Raw Strings
When there's a lot of double quotation marks inside a string, Rust may become confused as to what is the opening and closing quotation marks of the string itself. In these cases you can use raw strings. These start with an `r`, followed by a number of hash marks and a quotation mark (`#""#`). Inside these strings, you can put any character you want, but any character that starts with  `\` it will be taken literally.

```rust
r#"

	<title>GCD Calculator</title>
	<form action="/gcd" method="post">
	<input type="text" name="n"/>
	<input type="text" name="m"/>
	<button type="submit">Compute GCD</button>
	</form>

"#
```

## String Slice (Primitive) or String?
Strings can be either a "string slice" or a "regular string". These are some examples of the cases in which we are dealing with a regular string or a string slice. 

```rust
fn main() {
    string_slice("blue");
    string("red".to_string());
    string(String::from("hi"));
    string("rust is fun!".to_owned());
    string("nice weather".into());
    string(format!("Interpolation {}", "Station"));
    string_slice(&String::from("abc")[0..1]);
    string_slice("  hello there ".trim());
    string("Happy Monday!".to_string().replace("Mon", "Tues"));
    string("mY sHiFt KeY iS sTiCkY".to_lowercase());
}
```