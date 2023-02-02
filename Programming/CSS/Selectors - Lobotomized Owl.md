Called the “lobotomized owl selector” by Heydon Pickering for its resemblance to an owl’s vacant stare.

![[Pasted image 20220418111958.png]]

```css

* + * {
	property: value;
}

```

The lobotomized owl (due to how the "+" selector works) selects all elements that have a sibling before it. So, if we have a group of "p" tags in succession, the lobotomized owl will only from the second tag onwards (as they have a previous sibling). Note that here **we say sibling NOT parent**.

