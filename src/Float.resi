let toLocaleString: float => string
let fromString: string => option<float>
let fromStringUnsafe: string => float
let toString: float => string
let toStringWithRadix: (float, ~radix: int) => string
let isNaN: float => bool
type optsLocale = {style: string, minimumFractionDigits: int}
let toLocaleStringOptions: (float, Js.Undefined.t<string>, optsLocale) => string
let toExponential: float => string
let toExponentialWithPrecision: (float, ~digits: int) => string
let toFixed: float => string
let toFixedWithPrecision: (float, ~digits: int) => string
let toPrecisionWithPrecision: (float, ~digits: int) => string
let positiveInfinity: float
let negativeInfinity: float
let unsafeFloatToInt: float => int
let round: float => int
let ceil: float => int
let floor: float => int
let min: (float, float) => float
let minMany: array<float> => float
let max: (float, float) => float
let maxMany: array<float> => float
let random: unit => float
let abs: float => float
let trunc: float => float
let sign: float => float
let pow: (~base: float, ~exp: float) => float

let log: float => float
let log2: float => float
let log10: float => float
let log1p: float => float