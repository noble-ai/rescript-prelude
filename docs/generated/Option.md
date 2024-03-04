# Option




### Option.keepU
  
let keepU: (option<'a>, 'a => bool) => option<'a>  


### Option.keep
  
let keep: (option<'a>, 'a => bool) => option<'a>  


### Option.forEachU
  
let forEachU: (option<'a>, 'a => unit) => unit  


### Option.forEach
  
let forEach: (option<'a>, 'a => unit) => unit  


### Option.getExn
  
let getExn: option<'a> => 'a  


### Option.getUnsafe
  
let getUnsafe: option<'a> => 'a  


### Option.mapWithDefaultU
  
let mapWithDefaultU: (option<'a>, 'b, 'a => 'b) => 'b  


### Option.mapWithDefault
  
let mapWithDefault: (option<'a>, 'b, 'a => 'b) => 'b  


### Option.mapU
  
let mapU: (option<'a>, 'a => 'b) => option<'b>  


### Option.map
  
let map: (option<'a>, 'a => 'b) => option<'b>  


### Option.flatMapU
  
let flatMapU: (option<'a>, 'a => option<'b>) => option<'b>  


### Option.flatMap
  
let flatMap: (option<'a>, 'a => option<'b>) => option<'b>  


### Option.getWithDefault
  
let getWithDefault: (option<'a>, 'a) => 'a  


### Option.orElse
  
let orElse: (option<'a>, option<'a>) => option<'a>  


### Option.isSome
  
let isSome: option<'a> => bool  


### Option.isNone
  
let isNone: option<'a> => bool  


### Option.eqU
  
let eqU: (option<'a>, option<'b>, ('a, 'b) => bool) => bool  


### Option.eq
  
let eq: (option<'a>, option<'b>, ('a, 'b) => bool) => bool  


### Option.cmpU
  
let cmpU: (option<'a>, option<'b>, ('a, 'b) => int) => int  


### Option.cmp
  
let cmp: (option<'a>, option<'b>, ('a, 'b) => int) => int  


### Option.mapWithDefault
  
let mapWithDefault: (option<'a>, 'b, 'a => 'b) => 'b  
please use map->getWithDefault for ease of refactoring  


### Option.t
  
type t<'a> = option<'a>  


### Option.void
  
let void: option<'a> => unit  


### Option.getExn
  
let getExn: (option<'a>, ~desc: string=?) => 'a  


### Option.return
  
let return: 'a => option<'a>  


### Option.bind
  
let bind: (option<'a>, 'a => option<'b>) => option<'b>  


### Option.join
  
let join: option<option<'a>> => option<'a>  


### Option.const
  
let const: (option<'a>, 'b) => option<'b>  


### Option.some
  
let some: 'a => option<'a>  


### Option.none
  
let none: option<'a> => option<'b>  


### Option.apply
  
let apply: (option<'a => 'b>, option<'a>) => option<'b>  


### Option.liftA1
  
let liftA1: ('a => 'r, option<'a>) => option<'r>  


### Option.liftA2
  
let liftA2: (('a, 'b) => 'r, option<'a>, option<'b>) => option<'r>  


### Option.liftA3
  
let liftA3: (
  ('a, 'b, 'c) => 'd,
  option<'a>,
  option<'b>,
  option<'c>,
) => option<'d>  


### Option.applyFirst
  
let applyFirst: (option<'a>, option<'b>) => option<'a>  


### Option.applySecond
  
let applySecond: (option<'a>, option<'b>) => option<'b>  


### Option.all2
  
let all2: (option<'a>, option<'b>) => option<('a, 'b)>  


### Option.all3
  
let all3: (option<'a>, option<'b>, option<'c>) => option<('a, 'b, 'c)>  


### Option.all4
  
let all4: (
  option<'a>,
  option<'b>,
  option<'c>,
  option<'d>,
) => option<('a, 'b, 'c, 'd)>  


### Option.all5
  
let all5: (
  option<'a>,
  option<'b>,
  option<'c>,
  option<'d>,
  option<'e>,
) => option<('a, 'b, 'c, 'd, 'e)>  


### Option.all6
  
let all6: (
  option<'a>,
  option<'b>,
  option<'c>,
  option<'d>,
  option<'e>,
  option<'f>,
) => option<('a, 'b, 'c, 'd, 'e, 'f)>  


### Option.all
  
let all: array<option<'a>> => option<array<'a>>  


### Option.distribute2
  
let distribute2: option<('a, 'b)> => (option<'a>, option<'b>)  


### Option.distribute3
  
let distribute3: option<('a, 'b, 'c)> => (option<'a>, option<'b>, option<'c>)  


### Option.tap
  
let tap: (option<'a>, 'a => unit) => option<'a>  


### Option.tapNone
  
let tapNone: (option<'a>, unit => unit) => option<'a>  


### Option.invert
  
let invert: (option<'a>, 'b) => option<'b>  


### Option.predicate
  
let predicate: ('v, 'v => bool) => option<'v>  


### Option.guard
  
let guard: (option<'a>, 'a => bool) => option<'a>  


### Option.flap0
  
let flap0: option<unit => 'b> => option<'b>  


### Option.flap0_
  
let flap0_: option<unit => 'b> => unit  


### Option.flap1
  
let flap1: (option<'a => 'b>, 'a) => option<'b>  


### Option.flap1_
  
let flap1_: (option<'a => 'b>, 'a) => unit  


### Option.flap2
  
let flap2: (option<('a, 'b) => 'c>, 'a, 'b) => option<'c>  


### Option.flap2_
  
let flap2_: (option<('a, 'b) => 'c>, 'a, 'b) => unit  


### Option.flap3
  
let flap3: (option<('a, 'b, 'c) => 'd>, 'a, 'b, 'c) => option<'d>  


### Option.flap3_
  
let flap3_: (option<('a, 'b, 'c) => 'd>, 'a, 'b, 'c) => unit  


### Option.first
  
let first: (option<'a>, option<'a>) => option<'a>  


### Option.returnArray
  
let returnArray: array<'a> => array<option<'a>>  


### Option.log
  
let log: (option<'a>, 'b) => option<'a>  

