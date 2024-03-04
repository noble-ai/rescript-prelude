# String




### String.splitAt
  
`let splitAt: (string, int) => (Js.String2.t, Js.String2.t)`  


### String.capitalize
  
`let capitalize: string => string`  


### String.compare
  
`let compare: (string, string) => int`  


### String.shortenLargeString
  
`let shortenLargeString: (Js.String2.t, ~max: int=?, unit) => Js.String2.t`  


### String.prettyOptions
  
`let prettyOptions: array<string> => string`  


### String.getRandomString
  
`let getRandomString: unit => string`  


### String.makeUniq
  
`let makeUniq: (string, string) => string`  


### String.splitByComma
  
`let splitByComma: string => array<Js.String2.t>`  


### String.stringToId
  
`let stringToId: string => string`  


### String.includes
  
`let includes: (Js.String2.t, Js.String2.t) => bool`  


### String.split
  
`let split: (Js.String2.t, Js.String2.t) => array<Js.String2.t>`  


### String.concat
  
`let concat: (Js.String2.t, Js.String2.t) => Js.String2.t`  


### String.replaceByRe
  
`let replaceByRe: (Js.String2.t, Js_re.t, Js.String2.t) => Js.String2.t`  


### String.endsWith
  
`let endsWith: (Js.String2.t, Js.String2.t) => bool`  


### String.concatMany
  
`let concatMany: (Js.String2.t, array<Js.String2.t>) => Js.String2.t`  


### String.toLowerCase
  
`let toLowerCase: Js.String2.t => Js.String2.t`  


### String.toUpperCase
  
`let toUpperCase: Js.String2.t => Js.String2.t`  


### String.length
  
`let length: Js.String2.t => int`  


### String.make
  
`let make: 'a => Js.String2.t`  


### String.replace
  
`let replace: (Js.String2.t, Js.String2.t, Js.String2.t) => Js.String2.t`  


### String.match_
  
`let match_: (
  Js.String2.t,
  Js_re.t,
) => option<array<option<Js.String2.t>>>`  


### String.charAt
  
`let charAt: (Js.String2.t, int) => Js.String2.t`  


### String.slice
  
`let slice: (Js.String2.t, ~from: int, ~to_: int) => Js.String2.t`  


### String.trim
  
`let trim: Js.String2.t => Js.String2.t`  


### String.get
  
`let get: (Js.String2.t, int) => Js.String2.t`  


### String.startsWith
  
`let startsWith: (Js.String2.t, Js.String2.t) => bool`  


### String.sliceToEnd
  
`let sliceToEnd: (Js.String2.t, ~from: int) => Js.String2.t`  


### String.indexOf
  
`let indexOf: (Js.String2.t, Js.String2.t) => int`  

