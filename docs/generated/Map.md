# Map




### Map.t
  
type t<'key, 'value>  


### Map.make
  
let make: unit => t<'k, 'v>  


### Map.fromIterable
  
let fromIterable: Iterable.t<('k, 'v)> => t<'k, 'v>  


### Map.size
  
let size: t<'k, 'v> => int  


### Map.entries
  
let entries: t<'k, 'v> => Iterable.t<('k, 'v)>  


### Map.keys
  
let keys: t<'k, 'v> => Iterable.t<'k>  


### Map.values
  
let values: t<'k, 'v> => Iterable.t<'v>  


### Map.forEach
  
let forEach: (t<'k, 'v>, ('v, 'k, t<'k, 'v>) => unit) => unit  


### Map.has
  
let has: (t<'k, 'v>, 'k) => bool  


### Map.get
  
let get: (t<'k, 'v>, 'k) => option<'v>  


### Map.getUnsafe
  
let getUnsafe: (t<'k, 'v>, 'k) => 'v  


### Map.Mut
  
  
### Map.Mut.set
  
let set: (t<'k, 'v>, 'k, 'v) => unit  


### Map.Mut.delete
  
let delete: (t<'k, 'v>, 'k) => unit  


### Map.Mut.clear
  
let clear: t<'k, 'v> => unit  


### Map.clone
  
let clone: t<'a, 'b> => t<'a, 'b>  


### Map.set
  
let set: (t<'a, 'b>, 'a, 'b) => t<'a, 'b>  


### Map.delete
  
let delete: (t<'a, 'b>, 'a) => t<'a, 'b>  


### Map.clear
  
let clear: 'a => t<'b, 'c>  


### Map.reduce
  
let reduce: (t<'a, 'b>, ('c, 'a, 'b) => 'c, 'c) => 'c  


### Map.ToString
  
  
### Map.ToString.t
  
type t  


### Map.ToString.toString
  
let toString: t => string  


### Map.Complex
  
  
### Map.Complex.keys
  
type keys = t<string, ToString.t>  


### Map.Complex.values
  
type values<'value> = t<string, 'value>  


### Map.Complex.t
  
type t<'value> = (keys, values<'value>)  


### Map.Complex.fromArray
  
let fromArray: Array.t<(ToString.t, 'value)> => (keys, values<'value>)  


### Map.Complex.make
  
let make: unit => (t<'a, 'b>, t<'c, 'd>)  


### Map.Complex.size
  
let size: ((t<'a, 'b>, 'c)) => int  


### Map.Complex.entries
  
let entries: ((t<'a, 'b>, t<'a, 'c>)) => Iterable.t<('b, 'c)>  


### Map.Complex.keys
  
let keys: ((t<'a, 'b>, 'c)) => Iterable.t<'b>  


### Map.Complex.values
  
let values: (('a, t<'b, 'c>)) => Iterable.t<'c>  


### Map.Complex.forEach
  
let forEach: (
  (t<'a, 'b>, t<'b, 'c>),
  ('a, 'c, (t<'a, 'b>, t<'b, 'c>), t<'a, 'b>) => unit,
) => unit  


### Map.Complex.has
  
let has: ((t<string, 'a>, 'b), ToString.t) => bool  


### Map.Complex.get
  
let get: (('a, t<string, 'b>), ToString.t) => option<'b>  


### Map.Complex.getUnsafe
  
let getUnsafe: (('a, t<string, 'b>), ToString.t) => 'b  


### Map.Complex.Mut
  
  
### Map.Complex.Mut.set
  
let set: (
  (t<string, ToString.t>, t<string, 'a>),
  ToString.t,
  'a,
) => unit  


### Map.Complex.Mut.delete
  
let delete: ((t<string, 'a>, t<string, 'b>), ToString.t) => unit  


### Map.Complex.Mut.clear
  
let clear: ((t<'a, 'b>, t<'c, 'd>)) => unit  


### Map.Complex.clone
  
let clone: ((t<'a, 'b>, t<'c, 'd>)) => (t<'a, 'b>, t<'c, 'd>)  


### Map.Complex.set
  
let set: (
  (t<string, ToString.t>, t<string, 'a>),
  ToString.t,
  'a,
) => t<'a>  


### Map.Complex.delete
  
let delete: (
  (t<string, ToString.t>, t<string, 'a>),
  ToString.t,
) => t<'a>  


### Map.Complex.clear
  
let clear: unit => (t<'a, 'b>, t<'c, 'd>)  


### Map.Complex.reduce
  
let reduce: ((t<'a, 'b>, t<'a, 'c>), ('d, 'b, 'c) => 'd, 'd) => 'd  

