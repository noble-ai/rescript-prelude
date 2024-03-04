# Date




### Date.t
  
`type t = Js.Date.t`  


### Date.fromFloat
  
`let fromFloat: float => Js.Date.t`  


### Date.valueOf
  
`let valueOf: Js.Date.t => float`  


### Date.toString
  
`let toString: Js.Date.t => string`  


### Date.toStringIso
  
`let toStringIso: Js.Date.t => string`  


### Date.toStringDate
  
`let toStringDate: Js.Date.t => string`  


### Date.make
  
`let make: unit => Js.Date.t`  


### Date.now
  
`let now: unit => float`  


### Date.fromString
  
`let fromString: string => Js.Date.t`  


### Date.setUTCHoursMSMs
  
`let setUTCHoursMSMs: (
  Js.Date.t,
  ~hours: float,
  ~minutes: float,
  ~seconds: float,
  ~milliseconds: float,
  unit,
) => float`  


### Date.Mut
  
  
### Date.Mut.setHours
  
`let setHours: (Js.Date.t, float) => float`  


### Date.Mut.setMinutes
  
`let setMinutes: (Js.Date.t, float) => float`  


### Date.Mut.setSeconds
  
`let setSeconds: (Js.Date.t, float) => float`  


### Date.Mut.setMilliseconds
  
`let setMilliseconds: (Js.Date.t, float) => float`  


### Date.Mut.setDate
  
`let setDate: (Js.Date.t, float) => float`  


### Date.Mut.setTime
  
`let setTime: (Js.Date.t, float) => float`  


### Date.getTime
  
`let getTime: Js.Date.t => float`  


### Date.getDate
  
`let getDate: Js.Date.t => float`  

