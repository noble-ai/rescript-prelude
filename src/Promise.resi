type t<'a> = Js.Promise.t<'a>
type error = Js.Promise.error
external void: t<'a> => unit = "%identity"
let make: ((~resolve: (. 'a) => unit, ~reject: (. exn) => unit) => unit) => promise<'a>
let return: 'v => t<'v>
let reject: 'reason => t<'val>
let map: (t<'a>, 'a => 'b) => t<'b>
let const: (t<'x>, 'b) => t<'b>
let bind: (t<'a>, 'a => t<'b>) => t<'b>
let join: t<t<'a>> => t<'a>
let tap: (t<'a>, 'a => unit) => t<'a>
let tapBind: (t<'a>, 'a => t<'b>) => t<'a>
@val external all2: ((t<'a>, t<'b>)) => t<('a, 'b)> = "Promise.all"
@val external all3: ((t<'a>, t<'b>, t<'c>)) => t<('a, 'b, 'c)> = "Promise.all"
@val external all4: ((t<'a>, t<'b>, t<'c>, t<'d>)) => t<('a, 'b, 'c, 'd)> = "Promise.all"
@val external all5: ((t<'a>, t<'b>, t<'c>, t<'d>, t<'e>)) => t<('a, 'b, 'c, 'd, 'e)> = "Promise.all"
@send external catch: (t<'a>, 'error => t<'b>) => t<'b> = "catch"
@send external finally: (t<'a>, () => unit) => t<'a> = "finally"
let finallyVoid: (t<'a>, 'a => unit) => unit
let sequence: (array<'a>, 'a => t<'b>) => t<array<'b>>
external errorToExn: Js.Promise.error => exn = "%identity"
external errorToJsObj: Js.Promise.error => 'a = "%identity"
let toResult: t<'a> => t<result<'b, string>>
let sleep: int => promise<string>
let delay: (~ms: int, t<'a>) => t<'a>
