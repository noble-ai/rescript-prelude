type t = Js.Date.t
let fromFloat: float => Js.Date.t
let valueOf: Js.Date.t => float
let toString: Js.Date.t => string
let toStringIso: Js.Date.t => string
let toStringDate: Js.Date.t => string
let make: unit => Js.Date.t
let now: unit => float
let fromString: string => Js.Date.t
let setUTCHoursMSMs: (
  Js.Date.t,
  ~hours: float,
  ~minutes: float,
  ~seconds: float,
  ~milliseconds: float,
  unit,
) => float
module Mut: {
  let setHours: (Js.Date.t, float) => float
  let setMinutes: (Js.Date.t, float) => float
  let setSeconds: (Js.Date.t, float) => float
  let setMilliseconds: (Js.Date.t, float) => float
  let setDate: (Js.Date.t, float) => float
  let setTime: (Js.Date.t, float) => float
}
let getTime: Js.Date.t => float
let getDate: Js.Date.t => float
