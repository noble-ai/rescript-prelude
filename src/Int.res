///doc/ # Int

type t = int
let toString = Belt.Int.toString

let fromString = Belt.Int.fromString

external toFloat: t => float  = "%identity"
external fromFloatUnsafe: float => t = "%identity"
let fromFloat: float => option<t> = f => {
  f	
	->fromFloatUnsafe
	->Option.predicate(x => f->Float.round->toFloat == x->toFloat)
}

let initZeroDigitHelper = (num: int): string =>
  // TODO: negative ints - AxM
  num < 10 ? `0${num->toString}` : num->toString

let min = Js.Math.min_int
let minMany = Js.Math.minMany_int
let max = Js.Math.max_int
let maxMany = Js.Math.maxMany_int
let abs = Js.Math.abs_int
let sign = Js.Math.sign_int

let random = Js.Math.random_int
let toExponentialWithPrecision = x => x->toFloat->Js.Float.toExponentialWithPrecision