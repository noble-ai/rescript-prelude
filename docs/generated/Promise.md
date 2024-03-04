# Promise


### t

type t<'a> = Js.Promise.t<'a>

### error

type error = Js.Promise.error

### void

let void: t<'a> => unit

### make

let make: (
  (~resolve: 'a => unit, ~reject: exn => unit) => unit,
) => promise<'a>

### return

let return: 'v => t<'v>

### reject

let reject: 'reason => t<'val>

### map

let map: (t<'a>, 'a => 'b) => t<'b>

### const

let const: (t<'x>, 'b) => t<'b>

### bind

let bind: (t<'a>, 'a => t<'b>) => t<'b>

### join

let join: t<t<'a>> => t<'a>

### tap

let tap: (t<'a>, 'a => unit) => t<'a>

### tapBind

let tapBind: (t<'a>, 'a => t<'b>) => t<'a>

### all2

let all2: ((t<'a>, t<'b>)) => t<('a, 'b)>

### all3

let all3: ((t<'a>, t<'b>, t<'c>)) => t<('a, 'b, 'c)>

### all4

let all4: ((t<'a>, t<'b>, t<'c>, t<'d>)) => t<('a, 'b, 'c, 'd)>

### all5

let all5: (
  (t<'a>, t<'b>, t<'c>, t<'d>, t<'e>),
) => t<('a, 'b, 'c, 'd, 'e)>

### catch

let catch: (t<'a>, 'error => t<'b>) => t<'b>

### finally

let finally: (t<'a>, unit => unit) => t<'a>

### finallyVoid

let finallyVoid: (t<'a>, 'a => unit) => unit

### sequence

let sequence: (array<'a>, 'a => t<'b>) => t<array<'b>>

### errorToExn

let errorToExn: Js.Promise.error => exn

### errorToJsObj

let errorToJsObj: Js.Promise.error => 'a

### toResult

let toResult: t<'a> => t<result<'b, string>>

### sleep

let sleep: int => promise<string>

### delay

let delay: (~ms: int, t<'a>) => t<'a>

