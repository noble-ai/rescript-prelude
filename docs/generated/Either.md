# Either


With regards to [Purescript Either](https://pursuit.purescript.org/packages/purescript-either/6.1.0/docs/Data.Either)

### Either.t
  
`type t<'a, 'b> = Left('a) | Right('b)`  


### Either.left
  
`let left: 'a => t<'a, 'b>`  


### Either.right
  
`let right: 'b => t<'a, 'b>`  


### Either.map
  
`let map: ('l => 'lo, t<'l, 'r>) => t<'lo, 'r>`  


### Either.bimap
  
`let bimap: ('l => 'lo, 'r => 'ro, t<'l, 'r>) => t<'lo, 'ro>`  


### Either.sequence
  
`let sequence: t<option<'a>, option<'b>> => option<t<'a, 'b>>`  


### Either.either
  
`let either: ('a => 'c, 'b => 'c, t<'a, 'b>) => 'c`  


### Either.Nested
  
Recursive construction of multi value either, terminated with unit  
### Either.Nested.t1
  
`type t1<'a> = t<'a, unit>`  


### Either.Nested.t2
  
`type t2<'a, 'b> = t<'a, t1<'b>>`  


### Either.Nested.t3
  
`type t3<'a, 'b, 'c> = t<'a, t2<'b, 'c>>`  


### Either.Nested.t4
  
`type t4<'a, 'b, 'c, 'd> = t<'a, t3<'b, 'c, 'd>>`  


### Either.Nested.t5
  
`type t5<'a, 'b, 'c, 'd, 'e> = t<'a, t4<'b, 'c, 'd, 'e>>`  


### Either.Nested.t6
  
`type t6<'a, 'b, 'c, 'd, 'e, 'f> = t<
  'a,
  t5<'b, 'c, 'd, 'e, 'f>,
>`  

