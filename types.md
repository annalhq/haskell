# Types

- every expression (and sub-expressions) has a type
- types are checked statically
- types can be inferred

```Haskell
:t 'x' -- :t is used to infer type
--output will be
'x' :: Char
```
```Haskell
:t False
--output
False :: Bool
```
```Haskell
:t not -- logical operation, as it turn boolean into another bool hence Bool -> Bool
--output
not :: Bool->Bool
```
> [!NOTE]
> 1. `:t` is a GHCi command and not a part of Haskell.
> 2. The `::` symbol read "is of type"
