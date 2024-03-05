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
let formatNumber: (float, string) => string
let formatNumberDefault: float => string
let shortenLargeFloat: float => string
external unsafeFloatToInt: float => int = "%identity"
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
