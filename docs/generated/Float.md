# Float




### Float.toLocaleString
  
`let toLocaleString: float => string`  


### Float.fromString
  
`let fromString: string => option<float>`  


### Float.fromStringUnsafe
  
`let fromStringUnsafe: string => float`  


### Float.toString
  
`let toString: float => string`  


### Float.toStringWithRadix
  
`let toStringWithRadix: (float, ~radix: int) => string`  


### Float.isNaN
  
`let isNaN: float => bool`  


### Float.optsLocale
  
`type optsLocale = {
  style: string,
  minimumFractionDigits: int,
}`  


### Float.toLocaleStringOptions
  
`let toLocaleStringOptions: (float, Js.Undefined.t<string>, optsLocale) => string`  


### Float.toExponential
  
`let toExponential: float => string`  


### Float.toExponentialWithPrecision
  
`let toExponentialWithPrecision: (float, ~digits: int) => string`  


### Float.toFixed
  
`let toFixed: float => string`  


### Float.toFixedWithPrecision
  
`let toFixedWithPrecision: (float, ~digits: int) => string`  


### Float.toPrecisionWithPrecision
  
`let toPrecisionWithPrecision: (float, ~digits: int) => string`  


### Float.positiveInfinity
  
`let positiveInfinity: float`  


### Float.negativeInfinity
  
`let negativeInfinity: float`  


### Float.formatNumber
  
`let formatNumber: (float, string) => string`  


### Float.formatNumberDefault
  
`let formatNumberDefault: float => string`  


### Float.shortenLargeFloat
  
`let shortenLargeFloat: float => string`  


### Float.unsafeFloatToInt
  
`let unsafeFloatToInt: float => int`  


### Float.round
  
`let round: float => int`  


### Float.ceil
  
`let ceil: float => int`  


### Float.floor
  
`let floor: float => int`  


### Float.min
  
`let min: (float, float) => float`  


### Float.minMany
  
`let minMany: array<float> => float`  


### Float.max
  
`let max: (float, float) => float`  


### Float.maxMany
  
`let maxMany: array<float> => float`  


### Float.random
  
`let random: unit => float`  


### Float.abs
  
`let abs: float => float`  


### Float.trunc
  
`let trunc: float => float`  


### Float.sign
  
`let sign: float => float`  


### Float.pow
  
`let pow: (~base: float, ~exp: float) => float`  


### Float.log
  
`let log: float => float`  


### Float.log2
  
`let log2: float => float`  


### Float.log10
  
`let log10: float => float`  


### Float.log1p
  
`let log1p: float => float`  

