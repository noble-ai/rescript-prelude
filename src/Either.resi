@@ocaml.doc("With regards to [Purescript Either](https://pursuit.purescript.org/packages/purescript-either/6.1.0/docs/Data.Either)")
type t<'a, 'b> = Left('a) | Right('b)
let left: 'a => t<'a, 'b>
let right: 'b => t<'a, 'b>
let toLeft: t<'a, 'b> => option<'a>
let toRight: t<'a, 'b> => option<'b>

let map: ('l => 'lo, t<'l, 'r>) => t<'lo, 'r>
let bimap: ('l => 'lo, 'r => 'ro, t<'l, 'r>) => t<'lo, 'ro>
let sequence: t<option<'a>, option<'b>> => option<t<'a, 'b>>
let either: ('a => 'c, 'b => 'c, t<'a, 'b>) => 'c

@ocaml.doc("Recursive construction of multi value either, terminated with unit")
module Nested: {
  type t1<'a> = t<'a, unit>
  type t2<'a, 'b> = t<'a, t1<'b>>
  type t3<'a, 'b, 'c> = t<'a, t2<'b, 'c>>
  type t4<'a, 'b, 'c, 'd> = t<'a, t3<'b, 'c, 'd>>
  type t5<'a, 'b, 'c, 'd, 'e> = t<'a, t4<'b, 'c, 'd, 'e>>
  type t6<'a, 'b, 'c, 'd, 'e, 'f> = t<'a, t5<'b, 'c, 'd, 'e, 'f>>
}
