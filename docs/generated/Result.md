# Result




### Result.t
  
`type t<'a, 'b> = Belt_Result.t<'a, 'b> = Ok('a) | Error('b)`  


### Result.getExn
  
`let getExn: t<'a, 'b> => 'a`  


### Result.mapWithDefaultU
  
`let mapWithDefaultU: (t<'a, 'c>, 'b, 'a => 'b) => 'b`  


### Result.mapWithDefault
  
`let mapWithDefault: (t<'a, 'c>, 'b, 'a => 'b) => 'b`  


### Result.mapU
  
`let mapU: (t<'a, 'c>, 'a => 'b) => t<'b, 'c>`  


### Result.flatMapU
  
`let flatMapU: (t<'a, 'c>, 'a => t<'b, 'c>) => t<'b, 'c>`  


### Result.flatMap
  
`let flatMap: (t<'a, 'c>, 'a => t<'b, 'c>) => t<'b, 'c>`  


### Result.eqU
  
`let eqU: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => bool) => bool`  


### Result.eq
  
`let eq: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => bool) => bool`  


### Result.cmpU
  
`let cmpU: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => int) => int`  


### Result.cmp
  
`let cmp: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => int) => int`  


### Result.ok
  
`let ok: 'a => t<'a, 'b>`  


### Result.error
  
`let error: 'a => t<'b, 'a>`  


### Result.void
  
`let void: t<'a, 'e> => unit`  


### Result.return
  
`let return: 'a => t<'a, 'b>`  


### Result.isOk
  
`let isOk: t<'ok, 'err> => bool`  


### Result.isError
  
`let isError: t<'ok, 'err> => bool`  


### Result.fromOption
  
`let fromOption: (option<'a>, 'b) => t<'a, 'b>`  


### Result.fromOptionError
  
`let fromOptionError: option<'a> => t<unit, 'a>`  


### Result.toOption
  
`let toOption: result<'ok, 'err> => option<'ok>`  


### Result.or
  
`let or: (result<'ok, 'err>, 'ok) => 'ok`  


### Result.getWithDefault
  
`let getWithDefault: (result<'ok, 'err>, 'ok) => 'ok`  
> use or
{: .block-warning }  


### Result.resolve
  
`let resolve: (result<'ok, 'err>, ~ok: 'ok => 'b, ~err: 'err => 'b) => 'b`  


### Result.first
  
`let first: (result<'ok, 'err>, result<'ok, 'err>) => result<'ok, 'err>`  


### Result.invert
  
`let invert: t<'a, 'b> => t<'b, 'a>`  


### Result.predicate
  
`let predicate: (bool, 'v, 'err) => t<'v, 'err>`  
Keep the value v if true, otherwise return None

### Result.toOptionError
  
`let toOptionError: result<'ok, 'err> => option<'err>`  


### Result.bind
  
`let bind: (t<'a, 'b>, 'a => t<'c, 'b>) => t<'c, 'b>`  


### Result.bindError
  
`let bindError: (
  t<'ok, 'error>,
  'error => t<'ok, 'errorx>,
) => t<'ok, 'errorx>`  


### Result.guard
  
`let guard: (t<'ok, 'error>, 'ok => bool, 'error) => t<'ok, 'error>`  


### Result.guardOpt
  
`let guardOpt: (t<'ok, 'error>, 'ok => option<'error>) => t<'ok, 'error>`  


### Result.const
  
`let const: (t<'ok, 'error>, 'const) => t<'const, 'error>`  


### Result.tap
  
`let tap: (t<'ok, 'error>, t<'ok, 'error> => unit) => t<'ok, 'error>`  


### Result.forEach
  
`let forEach: (t<'ok, 'error>, 'ok => unit) => unit`  


### Result.forEachError
  
`let forEachError: (t<'ok, 'error>, 'error => unit) => unit`  


### Result.map
  
`let map: (t<'ok, 'error>, 'ok => 'ox) => t<'ox, 'error>`  


### Result.mapError
  
`let mapError: (t<'ok, 'error>, 'error => 'ex) => t<'ok, 'ex>`  


### Result.bimap
  
`let bimap: (
  t<'ok, 'error>,
  'ok => 'ox,
  'error => 'errorx,
) => t<'ox, 'errorx>`  


### Result.tapOk
  
`let tapOk: (t<'ok, 'error>, 'ok => unit) => t<'ok, 'error>`  


### Result.tapError
  
`let tapError: (t<'ok, 'error>, 'error => unit) => t<'ok, 'error>`  


### Result.merge
  
`let merge: (
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  ~eempty: 'ecc,
  result<'acc, 'ecc>,
  t<'a, 'e>,
) => t<'acc, 'ecc>`  


### Result.apply
  
`let apply: (t<'a => 'b, 'c>, t<'a, 'c>) => t<'b, 'c>`  


### Result.sequence
  
`let sequence: (
  ~aempty: 'acc,
  ~eempty: 'ecc,
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  array<t<'a, 'e>>,
) => t<'acc, 'ecc>`  


### Result.traverse
  
`let traverse: (
  ~aempty: 'acc,
  ~eempty: 'ecc,
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  array<'b>,
  'b => t<'a, 'e>,
) => t<'acc, 'ecc>`  


### Result.allArray
  
`let allArray: array<t<'a, 'e>> => t<array<'a>, 'e>`  


### Result.all2
  
`let all2: (t<'a, 'err>, t<'b, 'err>) => t<('a, 'b), 'err>`  
\nGiven results with different OK types but the same error type,\nReturn an Ok result with the tuple of all three if they are all Ok\nor return the first error\n

### Result.all3
  
`let all3: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
) => t<('a, 'b, 'c), 'err>`  


### Result.all4
  
`let all4: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
  t<'d, 'err>,
) => t<('a, 'b, 'c, 'd), 'err>`  


### Result.all5
  
`let all5: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
  t<'d, 'err>,
  t<'e, 'err>,
) => t<('a, 'b, 'c, 'd, 'e), 'err>`  


### Result.all6
  
`let all6: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
  t<'d, 'err>,
  t<'e, 'err>,
  t<'f, 'err>,
) => t<('a, 'b, 'c, 'd, 'e, 'f), 'err>`  


### Result.all
  
`let all: array<t<'a, 'err>> => t<array<'a>, 'err>`  


### Result.log
  
`let log: ('a, 'b) => 'a`  

