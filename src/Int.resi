type t = int
let toString: int => string
let fromString: string => option<int>
external toFloat: t => float = "%identity"
external fromFloatUnsafe: float => t = "%identity"
let fromFloat: float => option<t>
let initZeroDigitHelper: int => string
let min: (int, int) => int
let minMany: array<int> => int
let max: (int, int) => int
let maxMany: array<int> => int
let abs: int => int
let sign: int => int
let mod: (int, int) => int
let random: (int, int) => int
let toExponentialWithPrecision: (t, ~digits: int) => string
