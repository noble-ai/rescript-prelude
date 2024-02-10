external toFloat: int => float = "%identity"
let toString: int => string = %raw(`function(x) { return x.toString(); }`)
let toStringWithRadix = Js.Int.toStringWithRadix

let fromString = Belt.Int.fromString

let max = Js.Math.max_int
let min = Js.Math.min_int