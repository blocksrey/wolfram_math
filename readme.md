## How to use

The wolfram function can be used to execute Mathematica code from within a Lua program. To use it, simply call the function and pass the Mathematica code as a string argument. The function will return the output of the code execution as a string.

## Example usage:

```lua

local wolfram = require("wolfram")

-- evaluate a simple expression
print(wolfram("1 + 1")) -- prints "2"

-- evaluate a more complex expression
print(wolfram("Sum[n^2, {n, 1, 10}]")) -- prints "385"
```