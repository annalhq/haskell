## Expressions in context

- Expressions and Values
- Functions and Operators
- Numbers, character, Booleans, lists (and strings)
- Lambda terms

1. Haskell programs are structured into *modules*
2. Modules contain declarations

> [!IMPORTANT]
> One of the important form of declarations are ***bindings*** for new constants and functions. In such bindings, **expressions** play the central role

Haskell expression is a (possibly nested) terms built from constants and functions calls
- Important property of expressions is that they can be evaluated yielding a value.
- Values are themselves expressions that cannot be evaluated any further.
- We can type expressions into GHCi and it will try to evaluate the expression and print its resulting value.

### Operators are functions

Only syntactic differences between symbolic and alphanumeric function names.

```Haskell
6+9 
15

(+) 6 9
15
```

**Symbolic identifiers (Operators)** are **infix** by default, can can be made prefix by enclosing them in parentheses.

**Alphanumeric identifiers** are **prefix** by default, and can be made infix by enclosing them in back-quotes.

For example 
```Haskell
max 12 20
20

-- is equivalent to

12 `max` 20
20
```

Parentheses are used for grouping

```Haskell
min 7 (2 + 6)
7

min 7 (2+6)
8
```
Functions applications binds stronger than Operators.

More examples of expressions: 

```Haskell
reverse (reverse [1,2,3])
[1,2,3]

sum (filter odd [1,2,3,4,5])
9

take 1 "Haskell" ++ drop 4 "Haskell"
"Haskell"
```

### Anonymous Functions (Lambda terms)

Referring tor functions without giving them a name:

```Haskell
(\ x -> x+3) 4 
7
```
```Haskell
(\ list n -> take n (reverse list)) "hello" 3
"oll"
```
The `\` is pronounced "lambda"

Particularly useful as an argument to another function

```Haskell
map (\ x -> 3 * x + 1) [1,2,3]
[4,7,10]
```
Functions taking other functions as arguments are called ***higher-order functions***.

