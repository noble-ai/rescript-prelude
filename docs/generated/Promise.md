# Promise




### Promise.t
  
`type t<'a> = Js.Promise.t<'a>`  


### Promise.error
  
`type error = Js.Promise.error`  


### Promise.void
  
`let void: t<'a> => unit`  


### Promise.make
  
`let make: (
  (~resolve: 'a => unit, ~reject: exn => unit) => unit,
) => promise<'a>`  


### Promise.return
  
`let return: 'v => t<'v>`  


### Promise.reject
  
`let reject: 'reason => t<'val>`  


### Promise.map
  
`let map: (t<'a>, 'a => 'b) => t<'b>`  


### Promise.const
  
`let const: (t<'x>, 'b) => t<'b>`  


### Promise.bind
  
`let bind: (t<'a>, 'a => t<'b>) => t<'b>`  


### Promise.join
  
`let join: t<t<'a>> => t<'a>`  


### Promise.tap
  
`let tap: (t<'a>, 'a => unit) => t<'a>`  


### Promise.tapBind
  
`let tapBind: (t<'a>, 'a => t<'b>) => t<'a>`  


### Promise.all2
  
`let all2: ((t<'a>, t<'b>)) => t<('a, 'b)>`  


### Promise.all3
  
`let all3: ((t<'a>, t<'b>, t<'c>)) => t<('a, 'b, 'c)>`  


### Promise.all4
  
`let all4: ((t<'a>, t<'b>, t<'c>, t<'d>)) => t<('a, 'b, 'c, 'd)>`  


### Promise.all5
  
`let all5: (
  (t<'a>, t<'b>, t<'c>, t<'d>, t<'e>),
) => t<('a, 'b, 'c, 'd, 'e)>`  


### Promise.catch
  
`let catch: (t<'a>, 'error => t<'b>) => t<'b>`  


### Promise.finally
  
`let finally: (t<'a>, unit => unit) => t<'a>`  


### Promise.finallyVoid
  
`let finallyVoid: (t<'a>, 'a => unit) => unit`  


### Promise.sequence
  
`let sequence: (array<'a>, 'a => t<'b>) => t<array<'b>>`  


### Promise.errorToExn
  
`let errorToExn: Js.Promise.error => exn`  


### Promise.errorToJsObj
  
`let errorToJsObj: Js.Promise.error => 'a`  


### Promise.toResult
  
`let toResult: t<'a> => t<result<'b, string>>`  


### Promise.sleep
  
`let sleep: int => promise<string>`  


### Promise.delay
  
`let delay: (~ms: int, t<'a>) => t<'a>`  

