type result<'ok, 'err> = Result.t<'ok, 'err>
type t<'ok, 'err> = Promise.t<result<'ok, 'err>>
let map: (t<'o, 'e>, 'o => 'or) => Promise.t<result<'or, 'e>>
let bind: (t<'o, 'e>, 'o => t<'or, 'e>) => Promise.t<result<'or, 'e>>
let tap: (t<'o, 'e>, 'o => unit) => Promise.t<result<'o, 'e>>
let tapBind: (t<'o, 'e>, 'o => t<'a, 'b>) => Promise.t<result<'o, 'e>>
let lift: Promise.t<'a> => t<'a, 'err>
