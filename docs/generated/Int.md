# Int


### t

type t = int

### toString

let toString: int => string

### fromString

let fromString: string => option<int>

### toFloat

let toFloat: t => float

### fromFloatUnsafe

let fromFloatUnsafe: float => t

### fromFloat

let fromFloat: float => option<t>

### initZeroDigitHelper

let initZeroDigitHelper: int => string

### min

let min: (int, int) => int

### minMany

let minMany: array<int> => int

### max

let max: (int, int) => int

### maxMany

let maxMany: array<int> => int

### abs

let abs: int => int

### sign

let sign: int => int

### random

let random: (int, int) => int

### toExponentialWithPrecision

let toExponentialWithPrecision: (t, ~digits: int) => string

