type t<'a> = option<'a>
let return: 'a => option<'a>
let returnArray: array<'a> => array<option<'a>>

let some: 'a => option<'a>
let none: option<'a> => option<'b>

let void: option<'a> => unit

let getExn: (option<'a>, ~desc: string=?) => 'a
let getUnsafe: option<'a> => 'a

let or: (option<'a>, 'a) => 'a
@deprecated("please use or")
let getWithDefault: (option<'a>, 'a) => 'a

@deprecated("please use map->or for ease of refactoring")
let mapWithDefault: (option<'a>, 'b, 'a => 'b) => 'b
let mapWithDefaultU: (option<'a>, 'b, (. 'a) => 'b) => 'b

let keepU: (option<'a>, (. 'a) => bool) => option<'a>
let keep: (option<'a>, 'a => bool) => option<'a>
let forEachU: (option<'a>, (. 'a) => unit) => unit
let forEach: (option<'a>, 'a => unit) => unit
let mapU: (option<'a>, (. 'a) => 'b) => option<'b>
let map: (option<'a>, 'a => 'b) => option<'b>
let flatMapU: (option<'a>, (. 'a) => option<'b>) => option<'b>
let flatMap: (option<'a>, 'a => option<'b>) => option<'b>
let orElse: (option<'a>, option<'a>) => option<'a>
let isSome: option<'a> => bool
let isNone: option<'a> => bool
let eqU: (option<'a>, option<'b>, (. 'a, 'b) => bool) => bool
let eq: (option<'a>, option<'b>, ('a, 'b) => bool) => bool
let cmpU: (option<'a>, option<'b>, (. 'a, 'b) => int) => int
let cmp: (option<'a>, option<'b>, ('a, 'b) => int) => int

let bind: (option<'a>, 'a => option<'b>) => option<'b>
let join: option<option<'a>> => option<'a>
let const: (option<'a>, 'b) => option<'b>
let apply: (option<'a => 'b>, option<'a>) => option<'b>

@ocaml.doc("Turn a function on concrete values into an optional function. \"A\" for Applicative")
let liftA1: ('a => 'r, option<'a>) => option<'r>
let liftA2: (('a, 'b) => 'r, option<'a>, option<'b>) => option<'r>
let liftA3: (('a, 'b, 'c) => 'd, option<'a>, option<'b>, option<'c>) => option<'d>

// TODO: merge with first? - AxM
@deprecated("use first")
let applyFirst: (option<'a>, option<'b>) => option<'a>
@deprecated("use second")
let applySecond: (option<'a>, option<'b>) => option<'b>

let all2: (option<'a>, option<'b>) => option<('a, 'b)>
let all3: (option<'a>, option<'b>, option<'c>) => option<('a, 'b, 'c)>
let all4: (option<'a>, option<'b>, option<'c>, option<'d>) => option<('a, 'b, 'c, 'd)>
let all5: (option<'a>, option<'b>, option<'c>, option<'d>, option<'e>) => option<
  ('a, 'b, 'c, 'd, 'e),
>
let all6: (option<'a>, option<'b>, option<'c>, option<'d>, option<'e>, option<'f>) => option<
  ('a, 'b, 'c, 'd, 'e, 'f),
>
let all: array<option<'a>> => option<array<'a>>
let distribute2: option<('a, 'b)> => (option<'a>, option<'b>)
let distribute3: option<('a, 'b, 'c)> => (option<'a>, option<'b>, option<'c>)

let tap: (option<'a>, 'a => unit) => option<'a>
let tapNone: (option<'a>, unit => unit) => option<'a>

let invert: (option<'a>, 'b) => option<'b>

@ocaml.doc("Keep the value v if true, otherwise return None")
let predicate: ('v, 'v => bool) => option<'v>

@ocaml.doc("force the option to None when the predicate returns false")
let guard: (option<'a>, 'a => bool) => option<'a>

@ocaml.doc("invoke an optional function, returning optional result")
let flap0: option<unit => 'b> => option<'b>
let flap0_: option<unit => 'b> => unit
let flap1: (option<'a => 'b>, 'a) => option<'b>
let flap1_: (option<'a => 'b>, 'a) => unit
let flap2: (option<('a, 'b) => 'c>, 'a, 'b) => option<'c>
let flap2_: (option<('a, 'b) => 'c>, 'a, 'b) => unit
let flap3: (option<('a, 'b, 'c) => 'd>, 'a, 'b, 'c) => option<'d>
let flap3_: (option<('a, 'b, 'c) => 'd>, 'a, 'b, 'c) => unit

let first: (option<'a>, option<'a>) => option<'a>
let second: (option<'a>, option<'a>) => option<'a>

let log: (option<'a>, 'b) => option<'a>
