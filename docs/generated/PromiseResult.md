# PromiseResult




### PromiseResult.result
  
`type result<'ok, 'err> = Result.t<'ok, 'err>`  


### PromiseResult.t
  
`type t<'ok, 'err> = Promise.t<result<'ok, 'err>>`  


### PromiseResult.map
  
`let map: (t<'o, 'e>, 'o => 'or) => t<'or, 'e>`  


### PromiseResult.bind
  
`let bind: (t<'o, 'e>, 'o => t<'or, 'e>) => t<'or, 'e>`  


### PromiseResult.tap
  
`let tap: (t<'o, 'e>, 'o => unit) => t<'o, 'e>`  


### PromiseResult.tapBind
  
`let tapBind: (t<'o, 'e>, 'o => t<'a, 'b>) => t<'o, 'e>`  


### PromiseResult.lift
  
`let lift: Promise.t<'a> => t<'a, 'err>`  

