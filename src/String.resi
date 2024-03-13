type t = string
let splitAt: (t, int) => (t, t)
let capitalize: t =>t 
let compare: (t, t) => int
let shortenLargeString: (t, ~max: int=?, unit) => t
let prettyOptions: array<t> => t 
let getRandomString: unit => t 
let makeUniq: (t, t) => t 
let splitByComma: t => array<t>
let stringToId: t => t 
let includes: (t, t) => bool
let split: (t, t) => array<t>
let concat: (t, t) => t
let replaceByRe: (t, Js_re.t, t) => t
let endsWith: (t, t) => bool
let concatMany: (t, array<t>) => t
let toLowerCase: t => t
let toUpperCase: t => t
let length: t => int
let make: 'a => t
let replace: (t, t, t) => t
let match_: (t, Js_re.t) => option<array<option<t>>>
let charAt: (t, int) => t
let slice: (t, ~from: int, ~to_: int) => t
let trim: t => t
let get: (t, int) => option<t>
let getUnsafe: (t, int) => t


let startsWith: (t, t) => bool
let sliceToEnd: (t, ~from: int) => t
let indexOf: (t, t) => int
