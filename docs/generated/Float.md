# Float


### toLocaleString

let toLocaleString: float => string

### fromString

let fromString: string => option<float>

### fromStringUnsafe

let fromStringUnsafe: string => float

### toString

let toString: float => string

### toStringWithRadix

let toStringWithRadix: (float, ~radix: int) => string

### isNaN

let isNaN: float => bool

### optsLocale

type optsLocale = {
  style: string,
  minimumFractionDigits: int,
}

### toLocaleStringOptions

let toLocaleStringOptions: (float, Js.Undefined.t<string>, optsLocale) => string

### toExponential

let toExponential: float => string

### toExponentialWithPrecision

let toExponentialWithPrecision: (float, ~digits: int) => string

### toFixed

let toFixed: float => string

### toFixedWithPrecision

let toFixedWithPrecision: (float, ~digits: int) => string

### toPrecisionWithPrecision

let toPrecisionWithPrecision: (float, ~digits: int) => string

### positiveInfinity

let positiveInfinity: float

### negativeInfinity

let negativeInfinity: float

### formatNumber

let formatNumber: (float, string) => string

### formatNumberDefault

let formatNumberDefault: float => string

### shortenLargeFloat

let shortenLargeFloat: float => string

### unsafeFloatToInt

let unsafeFloatToInt: float => int

### round

let round: float => int

### ceil

let ceil: float => int

### floor

let floor: float => int

### min

let min: (float, float) => float

### minMany

let minMany: array<float> => float

### max

let max: (float, float) => float

### maxMany

let maxMany: array<float> => float

### random

let random: unit => float

### abs

let abs: float => float

### trunc

let trunc: float => float

### sign

let sign: float => float

### pow

let pow: (~base: float, ~exp: float) => float

