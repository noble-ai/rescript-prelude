type result<'ok, 'err> = Result.t<'ok, 'err>
type t<'ok, 'err> = Promise.t<result<'ok, 'err>>
let map: (t<'o, 'e>, 'o => 'or) => t<'or, 'e>
let bind: (t<'o, 'e>, 'o => t<'or, 'e>) => t<'or, 'e>
let tap: (t<'o, 'e>, 'o => unit) => t<'o, 'e>
let tapBind: (t<'o, 'e>, 'o => t<'a, 'b>) => t<'o, 'e>
let lift: Promise.t<'a> => t<'a, 'err>
