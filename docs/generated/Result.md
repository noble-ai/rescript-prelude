# Result


### t

type t<'a, 'b> = Belt_Result.t<'a, 'b> = Ok('a) | Error('b)

### getExn

let getExn: t<'a, 'b> => 'a

### mapWithDefaultU

let mapWithDefaultU: (t<'a, 'c>, 'b, 'a => 'b) => 'b

### mapWithDefault

let mapWithDefault: (t<'a, 'c>, 'b, 'a => 'b) => 'b

### mapU

let mapU: (t<'a, 'c>, 'a => 'b) => t<'b, 'c>

### map

let map: (t<'a, 'c>, 'a => 'b) => t<'b, 'c>

### flatMapU

let flatMapU: (t<'a, 'c>, 'a => t<'b, 'c>) => t<'b, 'c>

### flatMap

let flatMap: (t<'a, 'c>, 'a => t<'b, 'c>) => t<'b, 'c>

### getWithDefault

let getWithDefault: (t<'a, 'b>, 'a) => 'a

### isOk

let isOk: t<'a, 'b> => bool

### isError

let isError: t<'a, 'b> => bool

### eqU

let eqU: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => bool) => bool

### eq

let eq: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => bool) => bool

### cmpU

let cmpU: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => int) => int

### cmp

let cmp: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => int) => int

### ok

let ok: 'a => t<'a, 'b>

### error

let error: 'a => t<'b, 'a>

### void

let void: t<'a, 'e> => unit

### return

let return: 'a => t<'a, 'b>

### isOk

let isOk: t<'ok, 'err> => bool

### isError

let isError: t<'ok, 'err> => bool

### fromOption

let fromOption: (option<'a>, 'b) => t<'a, 'b>

### fromOptionError

let fromOptionError: option<'a> => t<unit, 'a>

### toOption

let toOption: result<'ok, 'err> => option<'ok>

### getWithDefault

let getWithDefault: (result<'ok, 'err>, 'ok) => 'ok

### resolve

let resolve: (result<'ok, 'err>, ~ok: 'ok => 'b, ~err: 'err => 'b) => 'b

### first

let first: (result<'ok, 'err>, result<'ok, 'err>) => result<'ok, 'err>

### invert

let invert: t<'a, 'b> => t<'b, 'a>

### predicate

let predicate: (bool, 'v, 'err) => t<'v, 'err>

### toOptionError

let toOptionError: result<'ok, 'err> => option<'err>

### bind

let bind: (t<'a, 'b>, 'a => t<'c, 'b>) => t<'c, 'b>

### guard

let guard: (t<'ok, 'error>, 'ok => bool, 'error) => t<'ok, 'error>

### guardOpt

let guardOpt: (t<'ok, 'error>, 'ok => option<'error>) => t<'ok, 'error>

### map

let map: (t<'ok, 'error>, 'ok => 'ox) => t<'ox, 'error>

### const

let const: (t<'ok, 'error>, 'const) => t<'const, 'error>

### tap

let tap: (t<'ok, 'error>, t<'ok, 'error> => unit) => t<'ok, 'error>

### forEach

let forEach: (t<'ok, 'error>, 'ok => unit) => unit

### forEachError

let forEachError: (t<'ok, 'error>, 'error => unit) => unit

### map

let map: (t<'ok, 'error>, 'ok => 'ox) => t<'ox, 'error>

### mapError

let mapError: (t<'ok, 'error>, 'error => 'ex) => t<'ok, 'ex>

### bimap

let bimap: (
  t<'ok, 'error>,
  'ok => 'ox,
  'error => 'errorx,
) => t<'ox, 'errorx>

### tapOk

let tapOk: (t<'ok, 'error>, 'ok => unit) => t<'ok, 'error>

### tapError

let tapError: (t<'ok, 'error>, 'error => unit) => t<'ok, 'error>

### merge

let merge: (
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  ~eempty: 'ecc,
  result<'acc, 'ecc>,
  t<'a, 'e>,
) => t<'acc, 'ecc>

### apply

let apply: (t<'a => 'b, 'c>, t<'a, 'c>) => t<'b, 'c>

### sequence

let sequence: (
  ~aempty: 'acc,
  ~eempty: 'ecc,
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  array<t<'a, 'e>>,
) => t<'acc, 'ecc>

### traverse

let traverse: (
  ~aempty: 'acc,
  ~eempty: 'ecc,
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  array<'b>,
  'b => t<'a, 'e>,
) => t<'acc, 'ecc>

### allArray

let allArray: array<t<'a, 'e>> => t<array<'a>, 'e>

### all2

let all2: (t<'a, 'err>, t<'b, 'err>) => t<('a, 'b), 'err>

### all3

let all3: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
) => t<('a, 'b, 'c), 'err>

### all4

let all4: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
  t<'d, 'err>,
) => t<('a, 'b, 'c, 'd), 'err>

### all5

let all5: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
  t<'d, 'err>,
  t<'e, 'err>,
) => t<('a, 'b, 'c, 'd, 'e), 'err>

### all6

let all6: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
  t<'d, 'err>,
  t<'e, 'err>,
  t<'f, 'err>,
) => t<('a, 'b, 'c, 'd, 'e, 'f), 'err>

### all

let all: array<t<'a, 'err>> => t<array<'a>, 'err>

