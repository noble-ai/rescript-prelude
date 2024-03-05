# Map


\n## Javascript Map\n[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map)\nKeys are compared by a specific method almost by-reference.\nMaps modifications are implemented mutably, so get/set/delete/clear include a clone.\n

### Map.t
  
`type t<'key, 'value>`  


### Map.make
  
`let make: unit => t<'k, 'v>`  


### Map.fromIterable
  
`let fromIterable: Iterable.t<('k, 'v)> => t<'k, 'v>`  


### Map.size
  
`let size: t<'k, 'v> => int`  


### Map.entries
  
`let entries: t<'k, 'v> => Iterable.t<('k, 'v)>`  


### Map.keys
  
`let keys: t<'k, 'v> => Iterable.t<'k>`  


### Map.values
  
`let values: t<'k, 'v> => Iterable.t<'v>`  


### Map.forEach
  
`let forEach: (t<'k, 'v>, ('v, 'k, t<'k, 'v>) => unit) => unit`  


### Map.has
  
`let has: (t<'k, 'v>, 'k) => bool`  


### Map.get
  
`let get: (t<'k, 'v>, 'k) => option<'v>`  


### Map.getUnsafe
  
`let getUnsafe: (t<'k, 'v>, 'k) => 'v`  


### Map.Mut
  
  
### Map.Mut.set
  
`let set: (t<'k, 'v>, 'k, 'v) => unit`  


### Map.Mut.delete
  
`let delete: (t<'k, 'v>, 'k) => unit`  


### Map.Mut.clear
  
`let clear: t<'k, 'v> => unit`  


### Map.clone
  
`let clone: t<'a, 'b> => t<'a, 'b>`  


### Map.set
  
`let set: (t<'a, 'b>, 'a, 'b) => t<'a, 'b>`  


### Map.delete
  
`let delete: (t<'a, 'b>, 'a) => t<'a, 'b>`  


### Map.clear
  
`let clear: 'a => t<'b, 'c>`  


### Map.reduce
  
`let reduce: (
  t<'key, 'value>,
  ('acc, 'key, 'value) => 'acc,
  'acc,
) => 'acc`  


### Map.Complex
  
  
### Map.Complex.Make
  
  
### Map.Complex.Make.keys
  
`type keys = t<string, Key.t>`  


### Map.Complex.Make.values
  
`type values<'value> = t<string, 'value>`  


### Map.Complex.Make.t
  
`type t<'value> = (keys, values<'value>)`  


### Map.Complex.Make.fromArray
  
`let fromArray: Array.t<(Key.t, 'value)> => t<'value>`  


### Map.Complex.Make.make
  
`let make: unit => t<'value>`  


### Map.Complex.Make.size
  
`let size: t<'value> => int`  


### Map.Complex.Make.entries
  
`let entries: t<'value> => Iterable.t<(Key.t, 'value)>`  


### Map.Complex.Make.keys
  
`let keys: t<'value> => Iterable.t<Key.t>`  


### Map.Complex.Make.values
  
`let values: t<'value> => Iterable.t<'value>`  


### Map.Complex.Make.forEach
  
`let forEach: (t<'value>, (Key.t, 'value, t<'value>) => unit) => unit`  


### Map.Complex.Make.has
  
`let has: (t<'value>, Key.t) => bool`  


### Map.Complex.Make.get
  
`let get: (t<'value>, Key.t) => option<'value>`  


### Map.Complex.Make.getUnsafe
  
`let getUnsafe: (t<'value>, Key.t) => 'value`  


### Map.Complex.Make.Mut
  
  
### Map.Complex.Make.Mut.set
  
`let set: (t<'value>, Key.t, 'value) => unit`  


### Map.Complex.Make.Mut.delete
  
`let delete: (t<'value>, Key.t) => unit`  


### Map.Complex.Make.Mut.clear
  
`let clear: t<'value> => unit`  


### Map.Complex.Make.clone
  
`let clone: t<'value> => t<'value>`  


### Map.Complex.Make.set
  
`let set: (t<'value>, Key.t, 'value) => t<'value>`  


### Map.Complex.Make.delete
  
`let delete: (t<'value>, Key.t) => t<'value>`  


### Map.Complex.Make.clear
  
`let clear: t<'value> => t<'value>`  


### Map.Complex.Make.reduce
  
`let reduce: (t<'value>, ('acc, Key.t, 'value) => 'acc, 'acc) => 'acc`  

