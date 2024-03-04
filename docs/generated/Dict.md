# Dict




### Dict.t
  
`type t<'a> = Js.Dict.t<'a>`  


### Dict.empty
  
`let empty: unit => Js.Dict.t<'a>`  


### Dict.set
  
`let set: (t<'a>, Js.Dict.key, 'a) => t<'a>`  


### Dict.get
  
`let get: (Js.Dict.t<'a>, Js.Dict.key) => option<'a>`  


### Dict.getUnsafe
  
`let getUnsafe: (Js.Dict.t<'a>, Js.Dict.key) => 'a`  


### Dict.fromArray
  
`let fromArray: array<(Js.Dict.key, 'a)> => Js.Dict.t<'a>`  


### Dict.entries
  
`let entries: Js.Dict.t<'a> => array<(Js.Dict.key, 'a)>`  


### Dict.values
  
`let values: Js.Dict.t<'a> => array<'a>`  


### Dict.merge
  
`let merge: (t<'a>, t<'a>) => t<'a>`  


### Dict.map
  
`let map: (Js.Dict.t<'a>, 'a => 'b) => Js.Dict.t<'b>`  


### Dict.Mut
  
  
### Dict.Mut.set
  
`let set: (Js.Dict.t<'a>, Js.Dict.key, 'a) => unit`  

