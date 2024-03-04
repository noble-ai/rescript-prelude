# Either


### t

type t<'a, 'b> = Left('a) | Right('b)

### left

let left: 'a => t<'a, 'b>

### right

let right: 'b => t<'a, 'b>

### map

let map: 'r. ('l => 'lo, t<'l, 'r>) => t<'lo, 'r>

### bimap

let bimap: ('l => 'lo, 'r => 'ro, t<'l, 'r>) => t<'lo, 'ro>

### sequence

let sequence: t<option<'a>, option<'b>> => option<t<'a, 'b>>

### either

let either: ('a => 'c, 'b => 'c, t<'a, 'b>) => 'c

### Nested


