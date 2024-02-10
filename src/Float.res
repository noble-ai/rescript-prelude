type t = float

let fromString = Belt.Float.fromString
let toString: float => string = %raw(`(x) => x.toString()`)

let round: float => int = %raw(`(x) => Math.round(x)`)
let ceil: float => int = %raw(`(x) => Math.ceil(x)`)
let max = Js.Math.max_float
let min = Js.Math.min_float
let abs = Js.Math.abs_float

let sign = (x: float): 'sign => {
  if (x > 0.0) {
    #positive 
  } else if (x < 0.0) {
    #negative 
  } else {
    #zero 
  }
}

let toLocaleString: float => string = %raw(`(x) => x.toLocaleString()`)
let toFixed = Js.Float.toFixed
let toFixedWithPrecision = Js.Float.toFixedWithPrecision
let toExponentialWithPrecision = Js.Float.toExponentialWithPrecision

type optsLocale = {
  style: string,
  minimumFractionDigits: int,
}

let toLocaleStringOptions: (float, Js.Undefined.t<string>, optsLocale) => string = %raw(`(x, fmt, opts) => x.toLocaleString(fmt, opts)`)

let positiveInfinity: float = %raw(`Number.POSITIVE_INFINITY`)
let negativeInfinity: float = %raw(`Number.NEGATIVE_INFINITY`)

@module("./Float.js") external formatNumber: (float, string) => string = "formatNumber"
@module("./Float.js") external formatNumberDefault: (float) => string = "formatNumber"

let shortenLargeFloat = (num: float): string => {
  num >= 1000.0 ? formatNumber(num, "0.0a") : formatNumber(num, "")
}

let shortenLargeNumberCertainty = (num: float): string => {
  num *. 100.0 == 100.0 ? "99.9" : (num *. 100.0)->Js.Float.toFixedWithPrecision(~digits=1)
}

let initZeroDigitHelper = (num: int): string =>
  // TODO: negative ints - AxM
  num < 10 ? `0${num->Belt.Int.toString}` : num->Belt.Int.toString

let fileSizeStringMB = (size: float): string => {
  `${(size /. 1024.0 /. 1024.0)->Js.Float.toFixedWithPrecision(~digits=2)}MB`
}

let floatIsPositive = w => {
  if w > 0.0 {
    Ok(w)
  } else {
    Error("Weight must be positive")
  }->Promise.return
}

