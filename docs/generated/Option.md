# Option


### keepU

let keepU: (option<'a>, 'a => bool) => option<'a>

### keep

let keep: (option<'a>, 'a => bool) => option<'a>

### forEachU

let forEachU: (option<'a>, 'a => unit) => unit

### forEach

let forEach: (option<'a>, 'a => unit) => unit

### getExn

let getExn: option<'a> => 'a

### getUnsafe

let getUnsafe: option<'a> => 'a

### mapWithDefaultU

let mapWithDefaultU: (option<'a>, 'b, 'a => 'b) => 'b

### mapWithDefault

let mapWithDefault: (option<'a>, 'b, 'a => 'b) => 'b

### mapU

let mapU: (option<'a>, 'a => 'b) => option<'b>

### map

let map: (option<'a>, 'a => 'b) => option<'b>

### flatMapU

let flatMapU: (option<'a>, 'a => option<'b>) => option<'b>

### flatMap

let flatMap: (option<'a>, 'a => option<'b>) => option<'b>

### getWithDefault

let getWithDefault: (option<'a>, 'a) => 'a

### orElse

let orElse: (option<'a>, option<'a>) => option<'a>

### isSome

let isSome: option<'a> => bool

### isNone

let isNone: option<'a> => bool

### eqU

let eqU: (option<'a>, option<'b>, ('a, 'b) => bool) => bool

### eq

let eq: (option<'a>, option<'b>, ('a, 'b) => bool) => bool

### cmpU

let cmpU: (option<'a>, option<'b>, ('a, 'b) => int) => int

### cmp

let cmp: (option<'a>, option<'b>, ('a, 'b) => int) => int

### mapWithDefault

let mapWithDefault: (option<'a>, 'b, 'a => 'b) => 'b
please use map->getWithDefault for ease of refactoring

### t

type t<'a> = option<'a>

### void

let void: option<'a> => unit

### getExn

let getExn: (option<'a>, ~desc: string=?) => 'a

### return

let return: 'a => option<'a>

### bind

let bind: (option<'a>, 'a => option<'b>) => option<'b>

### join

let join: option<option<'a>> => option<'a>

### const

let const: (option<'a>, 'b) => option<'b>

### some

let some: 'a => option<'a>

### none

let none: option<'a> => option<'b>

### apply

let apply: (option<'a => 'b>, option<'a>) => option<'b>

### liftA1

let liftA1: ('a => 'r, option<'a>) => option<'r>

### liftA2

let liftA2: (('a, 'b) => 'r, option<'a>, option<'b>) => option<'r>

### liftA3

let liftA3: (
  ('a, 'b, 'c) => 'd,
  option<'a>,
  option<'b>,
  option<'c>,
) => option<'d>

### applyFirst

let applyFirst: (option<'a>, option<'b>) => option<'a>

### applySecond

let applySecond: (option<'a>, option<'b>) => option<'b>

### all2

let all2: (option<'a>, option<'b>) => option<('a, 'b)>

### all3

let all3: (option<'a>, option<'b>, option<'c>) => option<('a, 'b, 'c)>

### all4

let all4: (
  option<'a>,
  option<'b>,
  option<'c>,
  option<'d>,
) => option<('a, 'b, 'c, 'd)>

### all5

let all5: (
  option<'a>,
  option<'b>,
  option<'c>,
  option<'d>,
  option<'e>,
) => option<('a, 'b, 'c, 'd, 'e)>

### all6

let all6: (
  option<'a>,
  option<'b>,
  option<'c>,
  option<'d>,
  option<'e>,
  option<'f>,
) => option<('a, 'b, 'c, 'd, 'e, 'f)>

### all

let all: array<option<'a>> => option<array<'a>>

### distribute2

let distribute2: option<('a, 'b)> => (option<'a>, option<'b>)

### distribute3

let distribute3: option<('a, 'b, 'c)> => (option<'a>, option<'b>, option<'c>)

### tap

let tap: (option<'a>, 'a => unit) => option<'a>

### tapNone

let tapNone: (option<'a>, unit => unit) => option<'a>

### invert

let invert: (option<'a>, 'b) => option<'b>

### predicate

let predicate: ('v, 'v => bool) => option<'v>

### guard

let guard: (option<'a>, 'a => bool) => option<'a>

### flap0

let flap0: option<unit => 'b> => option<'b>

### flap0_

let flap0_: option<unit => 'b> => unit

### flap1

let flap1: (option<'a => 'b>, 'a) => option<'b>

### flap1_

let flap1_: (option<'a => 'b>, 'a) => unit

### flap2

let flap2: (option<('a, 'b) => 'c>, 'a, 'b) => option<'c>

### flap2_

let flap2_: (option<('a, 'b) => 'c>, 'a, 'b) => unit

### flap3

let flap3: (option<('a, 'b, 'c) => 'd>, 'a, 'b, 'c) => option<'d>

### flap3_

let flap3_: (option<('a, 'b, 'c) => 'd>, 'a, 'b, 'c) => unit

### first

let first: (option<'a>, option<'a>) => option<'a>

### returnArray

let returnArray: array<'a> => array<option<'a>>

### log

let log: (option<'a>, 'b) => option<'a>

