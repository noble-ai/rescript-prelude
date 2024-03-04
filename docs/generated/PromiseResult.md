# PromiseResult




### PromiseResult.result
  
`type result<'ok, 'err> = Result.t<'ok, 'err>`  


### PromiseResult.t
  
`type t<'ok, 'err> = Promise.t<result<'ok, 'err>>`  


### PromiseResult.map
  
`let map: (t<'o, 'e>, 'o => 'or) => Promise.t<result<'or, 'e>>`  


### PromiseResult.bind
  
`let bind: (t<'o, 'e>, 'o => t<'or, 'e>) => Promise.t<result<'or, 'e>>`  


### PromiseResult.tap
  
`let tap: (t<'o, 'e>, 'o => unit) => Promise.t<result<'o, 'e>>`  


### PromiseResult.tapBind
  
`let tapBind: (t<'o, 'e>, 'o => t<'a, 'b>) => Promise.t<result<'o, 'e>>`  


### PromiseResult.lift
  
`let lift: Promise.t<'a> => t<'a, 'err>`  

