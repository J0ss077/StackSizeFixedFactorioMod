~~small~~ considerably big upgrade for **OpenBulochka**'s mod: [Stack Size](https://mods.factorio.com/mod/Silicon).

### options

- _multiplier_: multiply all stack sizes.
- _specific stack size_: set a specific stack size for **ALL** items.
- _force stacking_: force **ALL** items to be stackable.
- _custom formula_: use a custom formula to calculate stack sizes (check guide below).

### custom formula

if desired, you can use your own custom formula. the supported functions are:

- **unary operators:** `-a`

- **binary operators:** (`a + b`), (`a - b`), (`a * b`), (`a / b`)

- **trigonometric functions:** `sin(a)`, `cos(a)`, `tan(a)`, `asin(a)`, `acos(a)`, `atan(a)`

- **rounding functions:** `floor(a)`, `ceil(a)`

- **other functions:** `abs(a)`, `sqrt(a)`, `log(a)`, `log10(a)`, `exp(a)`, `rad(a)`, `deg(a)`

### formula examples

- **simple:** `x + 5` -> with `x = 2`, result `7`.

- **medium:** `sin(x) * 2 + sqrt(x)` -> with `x = 4`, result `≈ 0.49`, final value of `0`.

- **complex:** `sqrt(x^2 + 1) - cos(x) * 3` -> with `x = 3`, result `≈ 6.13`, final value of `6`.

> **Note:** the formula SHOULD always use the variable `x`. without it, the size will be the same for all stacks.

> **Note:** the final value will get its decimal part removed (the `floor()` operation), and won't be less than `1`.

### credits

original codes for the parsing logic made by ByteXenon. check the [GitHub here](https://github.com/bytexenon/MathParser.lua).
