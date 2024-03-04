# String


### splitAt

let splitAt: (string, int) => (Js.String2.t, Js.String2.t)

### capitalize

let capitalize: string => string

### compare

let compare: (string, string) => int

### shortenLargeString

let shortenLargeString: (Js.String2.t, ~max: int=?, unit) => Js.String2.t

### prettyOptions

let prettyOptions: array<string> => string

### getRandomString

let getRandomString: unit => string

### makeUniq

let makeUniq: (string, string) => string

### splitByComma

let splitByComma: string => array<Js.String2.t>

### stringToId

let stringToId: string => string

### includes

let includes: (Js.String2.t, Js.String2.t) => bool

### split

let split: (Js.String2.t, Js.String2.t) => array<Js.String2.t>

### concat

let concat: (Js.String2.t, Js.String2.t) => Js.String2.t

### replaceByRe

let replaceByRe: (Js.String2.t, Js_re.t, Js.String2.t) => Js.String2.t

### endsWith

let endsWith: (Js.String2.t, Js.String2.t) => bool

### concatMany

let concatMany: (Js.String2.t, array<Js.String2.t>) => Js.String2.t

### toLowerCase

let toLowerCase: Js.String2.t => Js.String2.t

### toUpperCase

let toUpperCase: Js.String2.t => Js.String2.t

### length

let length: Js.String2.t => int

### make

let make: 'a => Js.String2.t

### replace

let replace: (Js.String2.t, Js.String2.t, Js.String2.t) => Js.String2.t

### match_

let match_: (
  Js.String2.t,
  Js_re.t,
) => option<array<option<Js.String2.t>>>

### charAt

let charAt: (Js.String2.t, int) => Js.String2.t

### slice

let slice: (Js.String2.t, ~from: int, ~to_: int) => Js.String2.t

### trim

let trim: Js.String2.t => Js.String2.t

### get

let get: (Js.String2.t, int) => Js.String2.t

### startsWith

let startsWith: (Js.String2.t, Js.String2.t) => bool

### sliceToEnd

let sliceToEnd: (Js.String2.t, ~from: int) => Js.String2.t

### indexOf

let indexOf: (Js.String2.t, Js.String2.t) => int

