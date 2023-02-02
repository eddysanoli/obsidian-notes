A closure is a value that can be called as if it were a function. 

```rust
let server = HttpServer::new(|| {

	App::new().route("/", web::get().to(get_index))

});
```

The arguments for the closure go between vertical bars `||`, and the body of the closure goes between brackets `{...}`.