///doc/ # Date
type t = Js.Date.t
let fromFloat = Js.Date.fromFloat
let valueOf = Js.Date.valueOf
let toString = Js.Date.toString
let toStringIso = Js.Date.toISOString
let toStringDate = Js.Date.toDateString
let make = Js.Date.make
let now = Js.Date.now

let fromString = Js.Date.fromString

let setUTCHoursMSMs = Js.Date.setUTCHoursMSMs

module Mut = {
	let setHours = Js.Date.setHours
	let setMinutes = Js.Date.setMinutes
	let setSeconds = Js.Date.setSeconds
	let setMilliseconds = Js.Date.setMilliseconds
	let setDate = Js.Date.setDate
	let setTime = Js.Date.setTime
}

let getTime = Js.Date.getTime
let getDate = Js.Date.getDate