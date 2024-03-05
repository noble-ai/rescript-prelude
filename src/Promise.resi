type t<'a> = Js.Promise.t<'a>
type error = Js.Promise.error
external void: t<'a> => unit = "%identity"
let make: ((~resolve: (. 'a) => unit, ~reject: (. exn) => unit) => unit) => promise<'a>
let return: 'v => t<'v>
let reject: 'reason => t<'val>
let map: (t<'a>, 'a => 'b) => t<'b>

@ocaml.doc(
"Take a promise and replace its yielded value with a constant
We use this for casting to unit mostly, but it's useful for other things too
")
let const: (t<'x>, 'b) => t<'b>

let bind: (t<'a>, 'a => t<'b>) => t<'b>
let join: t<t<'a>> => t<'a>

@ocaml.doc("Call fn with the value from the promise, ignoring its return")
let tap: (t<'a>, 'a => unit) => t<'a>

@ocaml.doc( "Call fn with the value from the promise, ignoring its return. but only continue when fn resolves")
let tapBind: (t<'a>, 'a => t<'b>) => t<'a>

let all2: ((t<'a>, t<'b>)) => t<('a, 'b)>
let all3: ((t<'a>, t<'b>, t<'c>)) => t<('a, 'b, 'c)>
let all4: ((t<'a>, t<'b>, t<'c>, t<'d>)) => t<('a, 'b, 'c, 'd)>
let all5: ((t<'a>, t<'b>, t<'c>, t<'d>, t<'e>)) => t<('a, 'b, 'c, 'd, 'e)>

let catch: (t<'a>, 'error => t<'b>) => t<'b> 
let finally: (t<'a>, () => unit) => t<'a> 
@deprecated("use finally_")
let finallyVoid: (t<'a>, 'a => unit) => unit
let finally_: (t<'a>, 'a => unit) => unit

@ocaml.doc("Take an array of input, and a function that makes a promise producing b from one a.
Start with a Promise that produces an empty array.
Walk along the array of inputs, with the accumulator being a promise that produces the array of earlier inputs.
bind off of that promise with a function that produces your Promise<b>, then map that Promise to append it on the existing array of bs - AxM
")
let sequence: (array<'a>, 'a => t<'b>) => t<array<'b>>

external errorToExn: Js.Promise.error => exn = "%identity"
external errorToJsObj: Js.Promise.error => 'a = "%identity"
let toResult: t<'a> => t<result<'b, string>>
let sleep: int => promise<string>
let delay: (~ms: int, t<'a>) => t<'a>
