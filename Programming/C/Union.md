A **union** is a special data type available in C that allows to store different data types in the same memory location. You can define a union with many members, but only one member can contain a value at any given time. Unions provide an efficient way of using the same memory location for multiple-purpose.

## Definition
```c
union [union tag] { 
	member definition; 
	member definition; 
	... 
	member definition; 
} [one or more union variables];

```

## Example
```c

#include <stdio.h> 
#include <string.h> 

union Data { 
	int i; 
	float f; 
	char str[20]; 
}; 

int main( ) { 
	union Data data; 
	printf( "Memory size occupied by data : %d\n", sizeof(data)); 
	return 0; 
}

```

Result

```
Memory size occupied by data : 20
```
