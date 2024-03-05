type rec t<'a, 'b> = Belt_Result.t<'a, 'b> = Ok('a) | Error('b)
let getExn: t<'a, 'b> => 'a
let mapWithDefaultU: (t<'a, 'c>, 'b, (. 'a) => 'b) => 'b
let mapWithDefault: (t<'a, 'c>, 'b, 'a => 'b) => 'b
let mapU: (t<'a, 'c>, (. 'a) => 'b) => t<'b, 'c>
let flatMapU: (t<'a, 'c>, (. 'a) => t<'b, 'c>) => t<'b, 'c>
let flatMap: (t<'a, 'c>, 'a => t<'b, 'c>) => t<'b, 'c>
let eqU: (t<'a, 'c>, t<'b, 'd>, (. 'a, 'b) => bool) => bool
let eq: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => bool) => bool
let cmpU: (t<'a, 'c>, t<'b, 'd>, (. 'a, 'b) => int) => int
let cmp: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => int) => int
let ok: 'a => t<'a, 'b>
let error: 'a => t<'b, 'a>
let void: t<'a, 'e> => unit
let return: 'a => t<'a, 'b>
let isOk: t<'ok, 'err> => bool
let isError: t<'ok, 'err> => bool
let fromOption: (option<'a>, 'b) => t<'a, 'b>
let fromOptionError: option<'a> => t<unit, 'a>
let toOption: result<'ok, 'err> => option<'ok>
let getWithDefault: (result<'ok, 'err>, 'ok) => 'ok
let resolve: (result<'ok, 'err>, ~ok: 'ok => 'b, ~err: 'err => 'b) => 'b
let first: (result<'ok, 'err>, result<'ok, 'err>) => result<'ok, 'err>
let invert: t<'a, 'b> => t<'b, 'a>
let predicate: (bool, 'v, 'err) => t<'v, 'err>
let toOptionError: result<'ok, 'err> => option<'err>
let bind: (t<'a, 'b>, 'a => t<'c, 'b>) => t<'c, 'b>
let bindError: (t<'ok, 'error>, 'error => t<'ok, 'errorx>) => t<'ok, 'errorx>
let guard: (t<'ok, 'error>, 'ok => bool, 'error) => t<'ok, 'error>
let guardOpt: (t<'ok, 'error>, 'ok => option<'error>) => t<'ok, 'error>
let const: (t<'ok, 'error>, 'const) => t<'const, 'error>
let tap: (t<'ok, 'error>, t<'ok, 'error> => unit) => t<'ok, 'error>
let forEach: (t<'ok, 'error>, 'ok => unit) => unit
let forEachError: (t<'ok, 'error>, 'error => unit) => unit
let map: (t<'ok, 'error>, 'ok => 'ox) => t<'ox, 'error>
let mapError: (t<'ok, 'error>, 'error => 'ex) => t<'ok, 'ex>
let bimap: (t<'ok, 'error>, 'ok => 'ox, 'error => 'errorx) => t<'ox, 'errorx>
let tapOk: (t<'ok, 'error>, 'ok => unit) => t<'ok, 'error>
let tapError: (t<'ok, 'error>, 'error => unit) => t<'ok, 'error>
let merge: (
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  ~eempty: 'ecc,
  result<'acc, 'ecc>,
  t<'a, 'e>,
) => t<'acc, 'ecc>
let apply: (t<'a => 'b, 'c>, t<'a, 'c>) => t<'b, 'c>
let sequence: (
  ~aempty: 'acc,
  ~eempty: 'ecc,
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  array<t<'a, 'e>>,
) => t<'acc, 'ecc>
let traverse: (
  ~aempty: 'acc,
  ~eempty: 'ecc,
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  array<'b>,
  'b => t<'a, 'e>,
) => t<'acc, 'ecc>
let allArray: array<t<'a, 'e>> => t<array<'a>, 'e>
let all2: (t<'a, 'err>, t<'b, 'err>) => t<('a, 'b), 'err>
let all3: (t<'a, 'err>, t<'b, 'err>, t<'c, 'err>) => t<('a, 'b, 'c), 'err>
let all4: (t<'a, 'err>, t<'b, 'err>, t<'c, 'err>, t<'d, 'err>) => t<('a, 'b, 'c, 'd), 'err>
let all5: (t<'a, 'err>, t<'b, 'err>, t<'c, 'err>, t<'d, 'err>, t<'e, 'err>) => t<
  ('a, 'b, 'c, 'd, 'e),
  'err,
>
let all6: (t<'a, 'err>, t<'b, 'err>, t<'c, 'err>, t<'d, 'err>, t<'e, 'err>, t<'f, 'err>) => t<
  ('a, 'b, 'c, 'd, 'e, 'f),
  'err,
>
let all: array<t<'a, 'err>> => t<array<'a>, 'err>
let log: ('a, 'b) => 'a
