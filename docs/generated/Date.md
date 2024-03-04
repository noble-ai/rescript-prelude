# Date


### t

type t = Js.Date.t

### fromFloat

let fromFloat: float => Js.Date.t

### valueOf

let valueOf: Js.Date.t => float

### toString

let toString: Js.Date.t => string

### toStringIso

let toStringIso: Js.Date.t => string

### toStringDate

let toStringDate: Js.Date.t => string

### make

let make: unit => Js.Date.t

### now

let now: unit => float

### fromString

let fromString: string => Js.Date.t

### setUTCHoursMSMs

let setUTCHoursMSMs: (
  Js.Date.t,
  ~hours: float,
  ~minutes: float,
  ~seconds: float,
  ~milliseconds: float,
  unit,
) => float

### Mut


### getTime

let getTime: Js.Date.t => float

### getDate

let getDate: Js.Date.t => float

