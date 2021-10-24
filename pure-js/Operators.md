## Logical OR assignment (||=)

### Short-circuit evaluation

The logical OR operator works like this:

```js
x || y;
// returns x when x is truthy
// returns y when x is not truthy
```

The logical OR operator short-circuits: the second operand is only evaluated if the first operand doesn’t already determine the result.

Logical OR assignment short-circuits as well, meaning it only performs an assignment if the logical operation would evaluate the right-hand side. In other words, x ||= y is equivalent to:

`x || (x = y);`

And not equivalent to the following which would always perform an assignment:

`x = x || y;`


## Logical nullish assignment (??=)

### Short-circuit evaluation

The nullish coalescing operator is evaluated left to right, it is tested for possible short-circuit evaluation using the following rule:

(some expression that is neither null nor undefined) ?? expr is short-circuit evaluated to the left-hand side expression if the left-hand side proves to be neither null nor undefined.

**Short circuit means that the expr part above is not evaluated**, hence any side effects of doing so do not take effect (e.g., if expr is a function call, the calling never takes place).

Logical nullish assignment short-circuits as well meaning that x ??= y is equivalent to:

`x ?? (x = y);`

And not equivalent to the following which would always perform an assignment:

`x = x ?? y;`

## Left shift (<<)

The left shift operator (<<) shifts the first operand the specified number of bits to the left. Excess bits shifted off to the left are discarded. Zero bits are shifted in from the right.
