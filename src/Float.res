
let fromString = Belt.Float.fromString
let fromStringUnsafe = x => x->fromString->Option.getExn(~desc="Float.fromStringUnsafe")
let toString = Belt.Float.toString
let toStringWithRadix = Js.Float.toStringWithRadix
let isNaN = Js.Float.isNaN

type optsLocale = {
  style: string,
  minimumFractionDigits: int,
}

let toLocaleString: float => string = %raw(`(x) => x.toLocaleString()`)
let toLocaleStringOptions: (float, Js.Undefined.t<string>, optsLocale) => string = %raw(`(x, fmt, opts) => x.toLocaleString(fmt, opts)`)

let toExponential = Js.Float.toExponential
let toExponentialWithPrecision = Js.Float.toExponentialWithPrecision

let toFixed = Js.Float.toFixed
let toFixedWithPrecision = Js.Float.toFixedWithPrecision

let toPrecisionWithPrecision = Js.Float.toPrecisionWithPrecision

let positiveInfinity: float = %raw(`Number.POSITIVE_INFINITY`)
let negativeInfinity: float = %raw(`Number.NEGATIVE_INFINITY`)

@module("./Float.js") external formatNumber: (float, string) => string = "formatNumber"
@module("./Float.js") external formatNumberDefault: (float) => string = "formatNumber"

let shortenLargeFloat = (num: float): string => {
  num >= 1000.0 ? formatNumber(num, "0.0a") : formatNumber(num, "")
}


external unsafeFloatToInt: float => int = "%identity"
let round: float => int = x => x->Js.Math.round->unsafeFloatToInt
let ceil = Js.Math.ceil_int
let floor: (float) => int = (x) => x->Js.Math.floor_float->unsafeFloatToInt
let min = Js.Math.min_float
let minMany = Js.Math.minMany_float
let max = Js.Math.max_float
let maxMany = Js.Math.maxMany_float
let random = Js.Math.random
let abs = Js.Math.abs_float
let trunc = Js.Math.trunc
let sign = Js.Math.sign_float
let pow = Js.Math.pow_float