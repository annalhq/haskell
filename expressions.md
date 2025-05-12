## Expressions in context

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

Alphanumeric identifiers are **prefix** by default, and can be made infix by enclosing them in backquotes.

For example 
```Haskell
max 12 20
20

-- is equivalent to

12 `max` 20
20
```

parentheses are used for grouping

```Haskell
min 7 (2 + 6)
7

min 7 (2+6)
```
