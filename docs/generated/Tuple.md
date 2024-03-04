# Tuple




### Tuple.fst2
  
`let fst2: (('a, 'b)) => 'a`  


### Tuple.snd2
  
`let snd2: (('a, 'b)) => 'b`  


### Tuple.mapl2
  
`let mapl2: (~f: 'a => 'b, ('a, 'c)) => ('b, 'c)`  


### Tuple.mapr2
  
`let mapr2: (~f: 'a => 'b, ('c, 'a)) => ('c, 'b)`  


### Tuple.t2
  
`type t2<'a, 'z> = ('a, 'z)`  


### Tuple.t3
  
`type t3<'a, 'b, 'z> = ('a, 'b, 'z)`  


### Tuple.t4
  
`type t4<'a, 'b, 'c, 'z> = ('a, 'b, 'c, 'z)`  


### Tuple.t5
  
`type t5<'a, 'b, 'c, 'd, 'z> = ('a, 'b, 'c, 'd, 'z)`  


### Tuple.t6
  
`type t6<'a, 'b, 'c, 'd, 'e, 'z> = ('a, 'b, 'c, 'd, 'e, 'z)`  


### Tuple.t7
  
`type t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'z,
)`  


### Tuple.t8
  
`type t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  'z,
)`  


### Tuple.tuple1
  
`type tuple1<'a> = t2<'a, unit>`  


### Tuple.tuple2
  
`type tuple2<'a, 'b> = t3<'a, 'b, unit>`  


### Tuple.tuple3
  
`type tuple3<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>`  


### Tuple.tuple4
  
`type tuple4<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>`  


### Tuple.tuple5
  
`type tuple5<'a, 'b, 'c, 'd, 'e> = t6<
  'a,
  'b,
  'c,
  'd,
  'e,
  unit,
>`  


### Tuple.tuple6
  
`type tuple6<'a, 'b, 'c, 'd, 'e, 'f> = t7<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  unit,
>`  


### Tuple.tuple7
  
`type tuple7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = t8<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  unit,
>`  


### Tuple.return2
  
`let return2: 'a => ('a, 'a)`  


### Tuple.return3
  
`let return3: 'a => ('a, 'a, 'a)`  


### Tuple.return4
  
`let return4: 'a => ('a, 'a, 'a, 'a)`  


### Tuple.return5
  
`let return5: 'a => ('a, 'a, 'a, 'a, 'a)`  


### Tuple.return6
  
`let return6: 'a => ('a, 'a, 'a, 'a, 'a, 'a)`  


### Tuple.return7
  
`let return7: 'a => ('a, 'a, 'a, 'a, 'a, 'a, 'a)`  


### Tuple.curry2
  
`let curry2: ((('a, 'b)) => 'c, 'a, 'b) => 'c`  


### Tuple.curry3
  
`let curry3: ((('a, 'b, 'c)) => 'd, 'a, 'b, 'c) => 'd`  


### Tuple.curry4
  
`let curry4: ((('a, 'b, 'c, 'd)) => 'e, 'a, 'b, 'c, 'd) => 'e`  


### Tuple.curry5
  
`let curry5: ((('a, 'b, 'c, 'd, 'e)) => 'f, 'a, 'b, 'c, 'd, 'e) => 'f`  


### Tuple.curry6
  
`let curry6: (
  (('a, 'b, 'c, 'd, 'e, 'f)) => 'g,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
) => 'g`  


### Tuple.curry7
  
`let curry7: (
  (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'h,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
) => 'h`  


### Tuple.uncurry2
  
`let uncurry2: (('a, 'b) => 'c, ('a, 'b)) => 'c`  


### Tuple.uncurry3
  
`let uncurry3: (('a, 'b, 'c) => 'd, ('a, 'b, 'c)) => 'd`  


### Tuple.uncurry4
  
`let uncurry4: (('a, 'b, 'c, 'd) => 'e, ('a, 'b, 'c, 'd)) => 'e`  


### Tuple.uncurry5
  
`let uncurry5: (('a, 'b, 'c, 'd, 'e) => 'f, ('a, 'b, 'c, 'd, 'e)) => 'f`  


### Tuple.uncurry6
  
`let uncurry6: (
  ('a, 'b, 'c, 'd, 'e, 'f) => 'g,
  ('a, 'b, 'c, 'd, 'e, 'f),
) => 'g`  


### Tuple.uncurry7
  
`let uncurry7: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'h,
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => 'h`  


### Tuple.toList2
  
`let toList2: (('a, 'a)) => array<'a>`  


### Tuple.toList3
  
`let toList3: (('a, 'a, 'a)) => array<'a>`  


### Tuple.toList4
  
`let toList4: (('a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.toList5
  
`let toList5: (('a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.toList6
  
`let toList6: (('a, 'a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.toList7
  
`let toList7: (('a, 'a, 'a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.napply2
  
`let napply2: (('a => 'b, 'c => 'd), ('a, 'c)) => ('b, 'd)`  


### Tuple.napply3
  
`let napply3: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('a, 'c, 'e),
) => ('b, 'd, 'f)`  


### Tuple.napply4
  
`let napply4: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('a, 'c, 'e, 'g),
) => ('b, 'd, 'f, 'h)`  


### Tuple.napply5
  
`let napply5: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('a, 'c, 'e, 'g, 'i),
) => ('b, 'd, 'f, 'h, 'j)`  


### Tuple.napply6
  
`let napply6: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
  ),
  ('a, 'c, 'e, 'g, 'i, 'k),
) => ('b, 'd, 'f, 'h, 'j, 'l)`  


### Tuple.napply7
  
`let napply7: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
    'm => 'n,
  ),
  ('a, 'c, 'e, 'g, 'i, 'k, 'm),
) => ('b, 'd, 'f, 'h, 'j, 'l, 'n)`  


### Tuple.ncompose2
  
`let ncompose2: (
  ('a => 'b, 'c => 'd),
  ('e => 'a, 'f => 'c),
  'e,
) => ('b, 'f => 'd)`  


### Tuple.ncompose3
  
`let ncompose3: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('g => 'a, 'h => 'c, 'i => 'e),
  'g,
) => ('b, 'h => 'd, 'i => 'f)`  


### Tuple.ncompose4
  
`let ncompose4: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('i => 'a, 'j => 'c, 'k => 'e, 'l => 'g),
  'i,
) => ('b, 'j => 'd, 'k => 'f, 'l => 'h)`  


### Tuple.ncompose5
  
`let ncompose5: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('k => 'a, 'l => 'c, 'm => 'e, 'n => 'g, 'o => 'i),
  'k,
) => ('b, 'l => 'd, 'm => 'f, 'n => 'h, 'o => 'j)`  


### Tuple.ncompose6
  
`let ncompose6: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
  ),
  (
    'm => 'a,
    'n => 'c,
    'o => 'e,
    'p => 'g,
    'q => 'i,
    'r => 'k,
  ),
  'm,
) => ('b, 'n => 'd, 'o => 'f, 'p => 'h, 'q => 'j, 'r => 'l)`  


### Tuple.ncompose7
  
`let ncompose7: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
    'm => 'n,
  ),
  (
    'o => 'a,
    'p => 'c,
    'q => 'e,
    'r => 'g,
    's => 'i,
    't => 'k,
    'u => 'm,
  ),
  'o,
) => (
  'b,
  'p => 'd,
  'q => 'f,
  'r => 'h,
  's => 'j,
  't => 'l,
  'u => 'n,
)`  


### Tuple.reverse2
  
`let reverse2: (('a, 'b)) => ('b, 'a)`  


### Tuple.reverse3
  
`let reverse3: (('a, 'b, 'c)) => ('c, 'b, 'a)`  


### Tuple.reverse4
  
`let reverse4: (('a, 'b, 'c, 'd)) => ('d, 'c, 'b, 'a)`  


### Tuple.reverse5
  
`let reverse5: (('a, 'b, 'c, 'd, 'e)) => ('e, 'd, 'c, 'b, 'a)`  


### Tuple.reverse6
  
`let reverse6: (('a, 'b, 'c, 'd, 'e, 'f)) => ('f, 'e, 'd, 'c, 'b, 'a)`  


### Tuple.reverse7
  
`let reverse7: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => ('g, 'f, 'e, 'd, 'c, 'b, 'a)`  


### Tuple.mono
  
`let mono: (('a, 'b) => 'c, 'c => 'd, 'a, 'b) => 'd`  


### Tuple.all
  
`let all: (('a, 'b) => 'c, 'c => Array.t<bool>, 'a, 'b) => bool`  


### Tuple.some
  
`let some: (('a, 'b) => 'c, 'c => Array.t<bool>, 'a, 'b) => bool`  


### Tuple.Tuple2
  
  
### Tuple.Tuple2.t
  
`type t<'a, 'b> = ('a, 'b)`  


### Tuple.Tuple2.make
  
`let make: ('a, 'b) => ('a, 'b)`  


### Tuple.Tuple2.uncurry
  
`let uncurry: (('a, 'b) => 'c, ('a, 'b)) => 'c`  


### Tuple.Tuple2.curry
  
`let curry: ((('a, 'b)) => 'c, 'a, 'b) => 'c`  


### Tuple.Tuple2.return
  
`let return: 'a => ('a, 'a)`  


### Tuple.Tuple2.toList
  
`let toList: (('a, 'a)) => array<'a>`  


### Tuple.Tuple2.napply
  
`let napply: (('a => 'b, 'c => 'd), ('a, 'c)) => ('b, 'd)`  


### Tuple.Tuple2.ncompose
  
`let ncompose: (
  ('a => 'b, 'c => 'd),
  ('e => 'a, 'f => 'c),
  'e,
) => ('b, 'f => 'd)`  


### Tuple.Tuple2.show
  
`let show: ((string, string)) => string`  


### Tuple.Tuple2.mono
  
`let mono: (('a => 'b, 'c => 'b), ('a, 'c)) => array<'b>`  


### Tuple.Tuple2.all
  
`let all: (('a => bool, 'b => bool), ('a, 'b)) => bool`  


### Tuple.Tuple2.some
  
`let some: (('a => bool, 'b => bool), ('a, 'b)) => bool`  


### Tuple.Tuple2.get1
  
`let get1: (('a, 'b)) => 'a`  


### Tuple.Tuple2.get2
  
`let get2: (('a, 'b)) => 'b`  


### Tuple.Tuple3
  
  
### Tuple.Tuple3.t
  
`type t<'a, 'b, 'c> = ('a, 'b, 'c)`  


### Tuple.Tuple3.make
  
`let make: ('a, 'b, 'c) => ('a, 'b, 'c)`  


### Tuple.Tuple3.uncurry
  
`let uncurry: (('a, 'b, 'c) => 'd, ('a, 'b, 'c)) => 'd`  


### Tuple.Tuple3.curry
  
`let curry: ((('a, 'b, 'c)) => 'd, 'a, 'b, 'c) => 'd`  


### Tuple.Tuple3.return
  
`let return: 'a => ('a, 'a, 'a)`  


### Tuple.Tuple3.toList
  
`let toList: (('a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple3.napply
  
`let napply: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('a, 'c, 'e),
) => ('b, 'd, 'f)`  


### Tuple.Tuple3.ncompose
  
`let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('g => 'a, 'h => 'c, 'i => 'e),
  'g,
) => ('b, 'h => 'd, 'i => 'f)`  


### Tuple.Tuple3.show
  
`let show: ((string, string, string)) => string`  


### Tuple.Tuple3.mono
  
`let mono: (('a => 'b, 'c => 'b, 'd => 'b), ('a, 'c, 'd)) => array<'b>`  


### Tuple.Tuple3.all
  
`let all: (('a => bool, 'b => bool, 'c => bool), ('a, 'b, 'c)) => bool`  


### Tuple.Tuple3.some
  
`let some: (('a => bool, 'b => bool, 'c => bool), ('a, 'b, 'c)) => bool`  


### Tuple.Tuple3.get1
  
`let get1: (('a, 'b, 'c)) => 'a`  


### Tuple.Tuple3.get2
  
`let get2: (('a, 'b, 'c)) => 'b`  


### Tuple.Tuple3.get3
  
`let get3: (('a, 'b, 'c)) => 'c`  


### Tuple.Tuple4
  
  
### Tuple.Tuple4.t
  
`type t<'a, 'b, 'c, 'd> = ('a, 'b, 'c, 'd)`  


### Tuple.Tuple4.make
  
`let make: ('a, 'b, 'c, 'd) => ('a, 'b, 'c, 'd)`  


### Tuple.Tuple4.uncurry
  
`let uncurry: (('a, 'b, 'c, 'd) => 'e, ('a, 'b, 'c, 'd)) => 'e`  


### Tuple.Tuple4.curry
  
`let curry: ((('a, 'b, 'c, 'd)) => 'e, 'a, 'b, 'c, 'd) => 'e`  


### Tuple.Tuple4.return
  
`let return: 'a => ('a, 'a, 'a, 'a)`  


### Tuple.Tuple4.toList
  
`let toList: (('a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple4.napply
  
`let napply: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('a, 'c, 'e, 'g),
) => ('b, 'd, 'f, 'h)`  


### Tuple.Tuple4.ncompose
  
`let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('i => 'a, 'j => 'c, 'k => 'e, 'l => 'g),
  'i,
) => ('b, 'j => 'd, 'k => 'f, 'l => 'h)`  


### Tuple.Tuple4.show
  
`let show: ((string, string, string, string)) => string`  


### Tuple.Tuple4.mono
  
`let mono: (
  ('a => 'b, 'c => 'b, 'd => 'b, 'e => 'b),
  ('a, 'c, 'd, 'e),
) => array<'b>`  


### Tuple.Tuple4.all
  
`let all: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool),
  ('a, 'b, 'c, 'd),
) => bool`  


### Tuple.Tuple4.some
  
`let some: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool),
  ('a, 'b, 'c, 'd),
) => bool`  


### Tuple.Tuple4.get1
  
`let get1: (('a, 'b, 'c, 'd)) => 'a`  


### Tuple.Tuple4.get2
  
`let get2: (('a, 'b, 'c, 'd)) => 'b`  


### Tuple.Tuple4.get3
  
`let get3: (('a, 'b, 'c, 'd)) => 'c`  


### Tuple.Tuple4.get4
  
`let get4: (('a, 'b, 'c, 'd)) => 'd`  


### Tuple.Tuple5
  
  
### Tuple.Tuple5.t
  
`type t<'a, 'b, 'c, 'd, 'e> = ('a, 'b, 'c, 'd, 'e)`  


### Tuple.Tuple5.make
  
`let make: ('a, 'b, 'c, 'd, 'e) => ('a, 'b, 'c, 'd, 'e)`  


### Tuple.Tuple5.uncurry
  
`let uncurry: (('a, 'b, 'c, 'd, 'e) => 'f, ('a, 'b, 'c, 'd, 'e)) => 'f`  


### Tuple.Tuple5.curry
  
`let curry: ((('a, 'b, 'c, 'd, 'e)) => 'f, 'a, 'b, 'c, 'd, 'e) => 'f`  


### Tuple.Tuple5.return
  
`let return: 'a => ('a, 'a, 'a, 'a, 'a)`  


### Tuple.Tuple5.toList
  
`let toList: (('a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple5.napply
  
`let napply: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('a, 'c, 'e, 'g, 'i),
) => ('b, 'd, 'f, 'h, 'j)`  


### Tuple.Tuple5.ncompose
  
`let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('k => 'a, 'l => 'c, 'm => 'e, 'n => 'g, 'o => 'i),
  'k,
) => ('b, 'l => 'd, 'm => 'f, 'n => 'h, 'o => 'j)`  


### Tuple.Tuple5.show
  
`let show: ((string, string, string, string, string)) => string`  


### Tuple.Tuple5.mono
  
`let mono: (
  ('a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b),
  ('a, 'c, 'd, 'e, 'f),
) => array<'b>`  


### Tuple.Tuple5.all
  
`let all: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
  ),
  ('a, 'b, 'c, 'd, 'e),
) => bool`  


### Tuple.Tuple5.some
  
`let some: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
  ),
  ('a, 'b, 'c, 'd, 'e),
) => bool`  


### Tuple.Tuple5.get1
  
`let get1: (('a, 'b, 'c, 'd, 'e)) => 'a`  


### Tuple.Tuple5.get2
  
`let get2: (('a, 'b, 'c, 'd, 'e)) => 'b`  


### Tuple.Tuple5.get3
  
`let get3: (('a, 'b, 'c, 'd, 'e)) => 'c`  


### Tuple.Tuple5.get4
  
`let get4: (('a, 'b, 'c, 'd, 'e)) => 'd`  


### Tuple.Tuple5.get5
  
`let get5: (('a, 'b, 'c, 'd, 'e)) => 'e`  


### Tuple.Tuple6
  
  
### Tuple.Tuple6.t
  
`type t<'a, 'b, 'c, 'd, 'e, 'f> = ('a, 'b, 'c, 'd, 'e, 'f)`  


### Tuple.Tuple6.make
  
`let make: ('a, 'b, 'c, 'd, 'e, 'f) => ('a, 'b, 'c, 'd, 'e, 'f)`  


### Tuple.Tuple6.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e, 'f) => 'g,
  ('a, 'b, 'c, 'd, 'e, 'f),
) => 'g`  


### Tuple.Tuple6.curry
  
`let curry: (
  (('a, 'b, 'c, 'd, 'e, 'f)) => 'g,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
) => 'g`  


### Tuple.Tuple6.return
  
`let return: 'a => ('a, 'a, 'a, 'a, 'a, 'a)`  


### Tuple.Tuple6.toList
  
`let toList: (('a, 'a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple6.napply
  
`let napply: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
  ),
  ('a, 'c, 'e, 'g, 'i, 'k),
) => ('b, 'd, 'f, 'h, 'j, 'l)`  


### Tuple.Tuple6.ncompose
  
`let ncompose: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
  ),
  (
    'm => 'a,
    'n => 'c,
    'o => 'e,
    'p => 'g,
    'q => 'i,
    'r => 'k,
  ),
  'm,
) => ('b, 'n => 'd, 'o => 'f, 'p => 'h, 'q => 'j, 'r => 'l)`  


### Tuple.Tuple6.show
  
`let show: ((string, string, string, string, string, string)) => string`  


### Tuple.Tuple6.mono
  
`let mono: (
  (
    'a => 'b,
    'c => 'b,
    'd => 'b,
    'e => 'b,
    'f => 'b,
    'g => 'b,
  ),
  ('a, 'c, 'd, 'e, 'f, 'g),
) => array<'b>`  


### Tuple.Tuple6.all
  
`let all: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
  ),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => bool`  


### Tuple.Tuple6.some
  
`let some: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
  ),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => bool`  


### Tuple.Tuple6.get1
  
`let get1: (('a, 'b, 'c, 'd, 'e, 'f)) => 'a`  


### Tuple.Tuple6.get2
  
`let get2: (('a, 'b, 'c, 'd, 'e, 'f)) => 'b`  


### Tuple.Tuple6.get3
  
`let get3: (('a, 'b, 'c, 'd, 'e, 'f)) => 'c`  


### Tuple.Tuple6.get4
  
`let get4: (('a, 'b, 'c, 'd, 'e, 'f)) => 'd`  


### Tuple.Tuple6.get5
  
`let get5: (('a, 'b, 'c, 'd, 'e, 'f)) => 'e`  


### Tuple.Tuple6.get6
  
`let get6: (('a, 'b, 'c, 'd, 'e, 'f)) => 'f`  


### Tuple.Tuple7
  
  
### Tuple.Tuple7.t
  
`type t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
)`  


### Tuple.Tuple7.make
  
`let make: ('a, 'b, 'c, 'd, 'e, 'f, 'g) => ('a, 'b, 'c, 'd, 'e, 'f, 'g)`  


### Tuple.Tuple7.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'h,
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => 'h`  


### Tuple.Tuple7.curry
  
`let curry: (
  (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'h,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
) => 'h`  


### Tuple.Tuple7.return
  
`let return: 'a => ('a, 'a, 'a, 'a, 'a, 'a, 'a)`  


### Tuple.Tuple7.toList
  
`let toList: (('a, 'a, 'a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple7.napply
  
`let napply: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
    'm => 'n,
  ),
  ('a, 'c, 'e, 'g, 'i, 'k, 'm),
) => ('b, 'd, 'f, 'h, 'j, 'l, 'n)`  


### Tuple.Tuple7.ncompose
  
`let ncompose: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
    'm => 'n,
  ),
  (
    'o => 'a,
    'p => 'c,
    'q => 'e,
    'r => 'g,
    's => 'i,
    't => 'k,
    'u => 'm,
  ),
  'o,
) => (
  'b,
  'p => 'd,
  'q => 'f,
  'r => 'h,
  's => 'j,
  't => 'l,
  'u => 'n,
)`  


### Tuple.Tuple7.show
  
`let show: (
  (string, string, string, string, string, string, string),
) => string`  


### Tuple.Tuple7.mono
  
`let mono: (
  (
    'a => 'b,
    'c => 'b,
    'd => 'b,
    'e => 'b,
    'f => 'b,
    'g => 'b,
    'h => 'b,
  ),
  ('a, 'c, 'd, 'e, 'f, 'g, 'h),
) => array<'b>`  


### Tuple.Tuple7.all
  
`let all: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
    'g => bool,
  ),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => bool`  


### Tuple.Tuple7.some
  
`let some: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
    'g => bool,
  ),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => bool`  


### Tuple.Tuple7.get1
  
`let get1: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'a`  


### Tuple.Tuple7.get2
  
`let get2: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'b`  


### Tuple.Tuple7.get3
  
`let get3: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'c`  


### Tuple.Tuple7.get4
  
`let get4: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'd`  


### Tuple.Tuple7.get5
  
`let get5: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'e`  


### Tuple.Tuple7.get6
  
`let get6: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'f`  


### Tuple.Tuple7.get7
  
`let get7: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'g`  


### Tuple.Nested
  
  
### Tuple.Nested.t
  
`type t<'a, 'z> = ('a, 'z)`  


### Tuple.Nested.t2
  
`type t2<'a, 'z> = t<'a, 'z>`  


### Tuple.Nested.t3
  
`type t3<'a, 'b, 'z> = t<'a, t2<'b, 'z>>`  


### Tuple.Nested.t4
  
`type t4<'a, 'b, 'c, 'z> = t<'a, t3<'b, 'c, 'z>>`  


### Tuple.Nested.t5
  
`type t5<'a, 'b, 'c, 'd, 'z> = t<'a, t4<'b, 'c, 'd, 'z>>`  


### Tuple.Nested.t6
  
`type t6<'a, 'b, 'c, 'd, 'e, 'z> = t<
  'a,
  t5<'b, 'c, 'd, 'e, 'z>,
>`  


### Tuple.Nested.t7
  
`type t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = t<
  'a,
  t6<'b, 'c, 'd, 'e, 'f, 'z>,
>`  


### Tuple.Nested.t8
  
`type t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = t<
  'a,
  t7<'b, 'c, 'd, 'e, 'f, 'g, 'z>,
>`  


### Tuple.Nested.t9
  
`type t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z> = t<
  'a,
  t8<'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z>,
>`  


### Tuple.Nested.t2
  
`let t2: ('a, 'z) => t2<'a, 'z>`  


### Tuple.Nested.t3
  
`let t3: ('a, 'b, 'z) => t3<'a, 'b, 'z>`  


### Tuple.Nested.t4
  
`let t4: ('a, 'b, 'c, 'z) => t4<'a, 'b, 'c, 'z>`  


### Tuple.Nested.t5
  
`let t5: ('a, 'b, 'c, 'd, 'z) => t5<'a, 'b, 'c, 'd, 'z>`  


### Tuple.Nested.t6
  
`let t6: ('a, 'b, 'c, 'd, 'e, 'z) => t6<'a, 'b, 'c, 'd, 'e, 'z>`  


### Tuple.Nested.t7
  
`let t7: (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'z,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>`  


### Tuple.Nested.t8
  
`let t8: (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  'z,
) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>`  


### Tuple.Nested.t9
  
`let t9: (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  'h,
  'z,
) => t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z>`  


### Tuple.Nested.tuple1
  
`type tuple1<'a> = t2<'a, unit>`  


### Tuple.Nested.tuple2
  
`type tuple2<'a, 'b> = t3<'a, 'b, unit>`  


### Tuple.Nested.tuple3
  
`type tuple3<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>`  


### Tuple.Nested.tuple4
  
`type tuple4<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>`  


### Tuple.Nested.tuple5
  
`type tuple5<'a, 'b, 'c, 'd, 'e> = t6<
  'a,
  'b,
  'c,
  'd,
  'e,
  unit,
>`  


### Tuple.Nested.tuple6
  
`type tuple6<'a, 'b, 'c, 'd, 'e, 'f> = t7<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  unit,
>`  


### Tuple.Nested.tuple7
  
`type tuple7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = t8<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  unit,
>`  


### Tuple.Nested.tuple8
  
`type tuple8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h> = t9<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  'h,
  unit,
>`  


### Tuple.Nested.rest
  
`let rest: t<'a, 'b> => 'b`  


### Tuple.Nested.get1
  
`let get1: t2<'a, 'z> => 'a`  


### Tuple.Nested.get2
  
`let get2: t3<'a, 'b, 'z> => 'b`  


### Tuple.Nested.get3
  
`let get3: t4<'a, 'b, 'c, 'z> => 'c`  


### Tuple.Nested.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'z> => 'd`  


### Tuple.Nested.get5
  
`let get5: t6<'a, 'b, 'c, 'd, 'e, 'z> => 'e`  


### Tuple.Nested.get6
  
`let get6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'f`  


### Tuple.Nested.get7
  
`let get7: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'g`  


### Tuple.Nested.set1
  
`let set1: (t2<'a, 'z>, 'b) => t2<'b, 'z>`  


### Tuple.Nested.set2
  
`let set2: (t3<'a, 'b, 'z>, 'b) => t3<'a, 'b, 'z>`  


### Tuple.Nested.set3
  
`let set3: (t4<'a, 'b, 'c, 'z>, 'c) => t4<'a, 'b, 'c, 'z>`  


### Tuple.Nested.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'z>, 'd) => t5<'a, 'b, 'c, 'd, 'z>`  


### Tuple.Nested.set5
  
`let set5: (
  t6<'a, 'b, 'c, 'd, 'e, 'z>,
  'e,
) => t6<'a, 'b, 'c, 'd, 'e, 'z>`  


### Tuple.Nested.set6
  
`let set6: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>,
  'f,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>`  


### Tuple.Nested.set7
  
`let set7: (
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>,
  'g,
) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>`  


### Tuple.Nested.Tuple1
  
  
### Tuple.Nested.Tuple1.t
  
`type t<'a> = tuple1<'a>`  


### Tuple.Nested.Tuple1.units
  
`type units = t<unit>`  


### Tuple.Nested.Tuple1.make
  
`let make: 'a => t<'a>`  


### Tuple.Nested.Tuple1.units
  
`let units: t<unit>`  


### Tuple.Nested.Tuple1.over1
  
`let over1: ('a => 'r, t2<'a, 'z>) => t2<'r, 'z>`  


### Tuple.Nested.Tuple1.uncurry
  
`let uncurry: ('a => 'r, t2<'a, 'z>) => 'r`  


### Tuple.Nested.Tuple1.curry
  
`let curry: (t<'a> => 'r, 'a) => 'r`  


### Tuple.Nested.Tuple1.return
  
`let return: 'a => t<'a>`  


### Tuple.Nested.Tuple1.toList
  
`let toList: t<'a> => array<'a>`  


### Tuple.Nested.Tuple1.napply
  
`let napply: (t<'a => 'ao>, t<'a>) => t<'ao>`  


### Tuple.Nested.Tuple1.ncompose
  
`let ncompose: (t<'fa => 'fao>, t<'ga => 'fa>) => t<'ga => 'fao>`  


### Tuple.Nested.Tuple1.reverse
  
`let reverse: t<'a> => t<'a>`  


### Tuple.Nested.Tuple1.show
  
`let show: t<string> => string`  


### Tuple.Nested.Tuple1.encode
  
`let encode: 'a => ('a, unit)`  


### Tuple.Nested.Tuple1.decode
  
`let decode: (('a, 'b)) => 'a`  


### Tuple.Nested.Tuple1.mono
  
`let mono: (t<'a => 'b>, t<'a>) => array<'b>`  


### Tuple.Nested.Tuple1.all
  
`let all: (t<'a => bool>, t<'a>) => bool`  


### Tuple.Nested.Tuple1.some
  
`let some: (t<'a => bool>, t<'a>) => bool`  


### Tuple.Nested.Tuple1.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple1.get1
  
`let get1: t<'a> => 'a`  


### Tuple.Nested.Tuple2
  
  
### Tuple.Nested.Tuple2.t
  
`type t<'a, 'b> = t3<'a, 'b, unit>`  


### Tuple.Nested.Tuple2.make
  
`let make: ('a, 'b) => t<'a, 'b>`  


### Tuple.Nested.Tuple2.units
  
`type units = (unit, Tuple1.units)`  


### Tuple.Nested.Tuple2.units
  
`let units: (unit, Tuple1.t<unit>)`  


### Tuple.Nested.Tuple2.over
  
`let over: ('b => 'r, t3<'a, 'b, 'z>) => t3<'a, 'r, 'z>`  


### Tuple.Nested.Tuple2.uncurry
  
`let uncurry: (('a, 'b) => 'r, t3<'a, 'b, 'z>) => 'r`  


### Tuple.Nested.Tuple2.curry
  
`let curry: (t<'a, 'b> => 'r, 'a, 'b) => 'r`  


### Tuple.Nested.Tuple2.encode
  
`let encode: (('a, 'b)) => t<'a, 'b>`  


### Tuple.Nested.Tuple2.decode
  
`let decode: t<'a, 'b> => ('a, 'b)`  


### Tuple.Nested.Tuple2.return
  
`let return: 'a => t<'a, 'a>`  


### Tuple.Nested.Tuple2.toList
  
`let toList: t<'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple2.napply
  
`let napply: (t<'a => 'ao, 'b => 'bo>, t<'a, 'b>) => t<'ao, 'bo>`  


### Tuple.Nested.Tuple2.ncompose
  
`let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo>,
  t<'ga => 'fa, 'gb => 'fb>,
) => t<'ga => 'fao, 'gb => 'fbo>`  


### Tuple.Nested.Tuple2.reverse
  
`let reverse: t<'a, 'b> => t<'b, 'a>`  


### Tuple.Nested.Tuple2.show
  
`let show: t<string, string> => string`  


### Tuple.Nested.Tuple2.mono
  
`let mono: (t<'a => 'b, 'c => 'b>, t<'a, 'c>) => array<'b>`  


### Tuple.Nested.Tuple2.all
  
`let all: (t<'a => bool, 'b => bool>, t<'a, 'b>) => bool`  


### Tuple.Nested.Tuple2.some
  
`let some: (t<'a => bool, 'b => bool>, t<'a, 'b>) => bool`  


### Tuple.Nested.Tuple2.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple2.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple2.get1
  
`let get1: t<'a, 'b> => 'a`  


### Tuple.Nested.Tuple2.get2
  
`let get2: t<'a, 'b> => 'b`  


### Tuple.Nested.Tuple3
  
  
### Tuple.Nested.Tuple3.t
  
`type t<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>`  


### Tuple.Nested.Tuple3.make
  
`let make: ('a, 'b, 'c) => t<'a, 'b, 'c>`  


### Tuple.Nested.Tuple3.units
  
`type units = (unit, Tuple2.units)`  


### Tuple.Nested.Tuple3.units
  
`let units: (unit, (unit, Tuple1.t<unit>))`  


### Tuple.Nested.Tuple3.over
  
`let over: ('c => 'r, t4<'a, 'b, 'c, 'z>) => t4<'a, 'b, 'r, 'z>`  


### Tuple.Nested.Tuple3.uncurry
  
`let uncurry: (('a, 'b, 'c) => 'r, t4<'a, 'b, 'c, 'z>) => 'r`  


### Tuple.Nested.Tuple3.curry
  
`let curry: (t<'a, 'b, 'c> => 'r, 'a, 'b, 'c) => 'r`  


### Tuple.Nested.Tuple3.encode
  
`let encode: (('a, 'b, 'c)) => t<'a, 'b, 'c>`  


### Tuple.Nested.Tuple3.decode
  
`let decode: t<'a, 'b, 'c> => ('a, 'b, 'c)`  


### Tuple.Nested.Tuple3.return
  
`let return: 'a => t<'a, 'a, 'a>`  


### Tuple.Nested.Tuple3.toList
  
`let toList: t<'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple3.napply
  
`let napply: (
  t<'a => 'ao, 'b => 'bo, 'c => 'co>,
  t<'a, 'b, 'c>,
) => t<'ao, 'bo, 'co>`  


### Tuple.Nested.Tuple3.ncompose
  
`let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco>,
  t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc>,
) => t<'ga => 'fao, 'gb => 'fbo, 'gc => 'fco>`  


### Tuple.Nested.Tuple3.reverse
  
`let reverse: t<'a, 'b, 'c> => t<'c, 'b, 'a>`  


### Tuple.Nested.Tuple3.show
  
`let show: t<string, string, string> => string`  


### Tuple.Nested.Tuple3.mono
  
`let mono: (
  t<'a => 'b, 'c => 'b, 'd => 'b>,
  t<'a, 'c, 'd>,
) => array<'b>`  


### Tuple.Nested.Tuple3.all
  
`let all: (
  t<'a => bool, 'b => bool, 'c => bool>,
  t<'a, 'b, 'c>,
) => bool`  


### Tuple.Nested.Tuple3.some
  
`let some: (
  t<'a => bool, 'b => bool, 'c => bool>,
  t<'a, 'b, 'c>,
) => bool`  


### Tuple.Nested.Tuple3.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple3.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple3.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple3.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple3.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple3.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple4
  
  
### Tuple.Nested.Tuple4.t
  
`type t<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>`  


### Tuple.Nested.Tuple4.make
  
`let make: ('a, 'b, 'c, 'd) => t<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple4.units
  
`type units = (unit, Tuple3.units)`  


### Tuple.Nested.Tuple4.units
  
`let units: (unit, (unit, (unit, Tuple1.t<unit>)))`  


### Tuple.Nested.Tuple4.over
  
`let over: ('d => 'd, t5<'a, 'b, 'd, 'd, 'z>) => t5<'a, 'b, 'd, 'd, 'z>`  


### Tuple.Nested.Tuple4.uncurry
  
`let uncurry: (('a, 'b, 'c, 'd) => 'r, t5<'a, 'b, 'c, 'd, 'z>) => 'r`  


### Tuple.Nested.Tuple4.curry
  
`let curry: (t<'a, 'b, 'c, 'd> => 'r, 'a, 'b, 'c, 'd) => 'r`  


### Tuple.Nested.Tuple4.encode
  
`let encode: (('a, 'b, 'c, 'd)) => t<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple4.decode
  
`let decode: t<'a, 'b, 'c, 'd> => ('a, 'b, 'c, 'd)`  


### Tuple.Nested.Tuple4.return
  
`let return: 'a => t<'a, 'a, 'a, 'a>`  


### Tuple.Nested.Tuple4.toList
  
`let toList: t<'a, 'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple4.napply
  
`let napply: (
  t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do>,
  t<'a, 'b, 'c, 'd>,
) => t<'ao, 'bo, 'co, 'do>`  


### Tuple.Nested.Tuple4.ncompose
  
`let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo>,
  t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd>,
) => t<'ga => 'fao, 'gb => 'fbo, 'gc => 'fco, 'gd => 'fdo>`  


### Tuple.Nested.Tuple4.reverse
  
`let reverse: t<'a, 'b, 'c, 'd> => t<'d, 'c, 'b, 'a>`  


### Tuple.Nested.Tuple4.show
  
`let show: t<string, string, string, string> => string`  


### Tuple.Nested.Tuple4.mono
  
`let mono: (
  t<'a => 'b, 'c => 'b, 'd => 'b, 'e => 'b>,
  t<'a, 'c, 'd, 'e>,
) => array<'b>`  


### Tuple.Nested.Tuple4.all
  
`let all: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool>,
  t<'a, 'b, 'c, 'd>,
) => bool`  


### Tuple.Nested.Tuple4.some
  
`let some: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool>,
  t<'a, 'b, 'c, 'd>,
) => bool`  


### Tuple.Nested.Tuple4.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple4.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple4.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple4.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple4.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple4.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple4.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple4.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd`  


### Tuple.Nested.Tuple5
  
  
### Tuple.Nested.Tuple5.t
  
`type t<'a, 'b, 'c, 'd, 'e> = t6<'a, 'b, 'c, 'd, 'e, unit>`  


### Tuple.Nested.Tuple5.units
  
`type units = (unit, Tuple4.units)`  


### Tuple.Nested.Tuple5.units
  
`let units: (unit, (unit, (unit, (unit, Tuple1.t<unit>))))`  


### Tuple.Nested.Tuple5.make
  
`let make: ('a, 'b, 'c, 'd, 'e) => t<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple5.over
  
`let over: (
  'e => 'e,
  t6<'a, 'b, 'e, 'd, 'e, 'z>,
) => t6<'a, 'b, 'e, 'd, 'e, 'z>`  


### Tuple.Nested.Tuple5.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e) => 'r,
  t6<'a, 'b, 'c, 'd, 'e, 'z>,
) => 'r`  


### Tuple.Nested.Tuple5.curry
  
`let curry: (t<'a, 'b, 'c, 'd, 'e> => 'r, 'a, 'b, 'c, 'd, 'e) => 'r`  


### Tuple.Nested.Tuple5.encode
  
`let encode: (('a, 'b, 'c, 'd, 'e)) => t<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple5.decode
  
`let decode: t<'a, 'b, 'c, 'd, 'e> => ('a, 'b, 'c, 'd, 'e)`  


### Tuple.Nested.Tuple5.return
  
`let return: 'a => t<'a, 'a, 'a, 'a, 'a>`  


### Tuple.Nested.Tuple5.toList
  
`let toList: t<'a, 'a, 'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple5.napply
  
`let napply: (
  t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do, 'e => 'eo>,
  t<'a, 'b, 'c, 'd, 'e>,
) => t<'ao, 'bo, 'co, 'do, 'eo>`  


### Tuple.Nested.Tuple5.ncompose
  
`let ncompose: (
  t<
    'fa => 'fao,
    'fb => 'fbo,
    'fc => 'fco,
    'fd => 'fdo,
    'fe => 'feo,
  >,
  t<
    'ga => 'fa,
    'gb => 'fb,
    'gc => 'fc,
    'gd => 'fd,
    'ge => 'fe,
  >,
) => t<
  'ga => 'fao,
  'gb => 'fbo,
  'gc => 'fco,
  'gd => 'fdo,
  'ge => 'feo,
>`  


### Tuple.Nested.Tuple5.reverse
  
`let reverse: t<'a, 'b, 'c, 'd, 'e> => t<'e, 'd, 'c, 'b, 'a>`  


### Tuple.Nested.Tuple5.show
  
`let show: t<string, string, string, string, string> => string`  


### Tuple.Nested.Tuple5.mono
  
`let mono: (
  t<'a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b>,
  t<'a, 'c, 'd, 'e, 'f>,
) => array<'b>`  


### Tuple.Nested.Tuple5.all
  
`let all: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e>,
) => bool`  


### Tuple.Nested.Tuple5.some
  
`let some: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e>,
) => bool`  


### Tuple.Nested.Tuple5.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple5.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple5.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple5.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple5.set5
  
`let set5: (
  t6<'a, 'b, 'c, 'd, 'e, 'f>,
  'e,
) => t6<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple5.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple5.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple5.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple5.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd`  


### Tuple.Nested.Tuple5.get5
  
`let get5: t6<'a, 'b, 'c, 'd, 'e, 'f> => 'e`  


### Tuple.Nested.Tuple6
  
  
### Tuple.Nested.Tuple6.t
  
`type t<'a, 'b, 'c, 'd, 'e, 'f> = (
  'a,
  Tuple5.t<'b, 'c, 'd, 'e, 'f>,
)`  


### Tuple.Nested.Tuple6.units
  
`type units = (unit, Tuple5.units)`  


### Tuple.Nested.Tuple6.make
  
`let make: ('a, 'b, 'c, 'd, 'e, 'f) => t<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple6.units
  
`let units: (unit, (unit, (unit, (unit, (unit, Tuple1.t<unit>)))))`  


### Tuple.Nested.Tuple6.get
  
`let get: t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'f`  


### Tuple.Nested.Tuple6.set
  
`let set: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>,
  'f,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>`  


### Tuple.Nested.Tuple6.over
  
`let over: (
  'f => 'f,
  t7<'a, 'b, 'f, 'd, 'e, 'f, 'z>,
) => t7<'a, 'b, 'f, 'd, 'e, 'f, 'z>`  


### Tuple.Nested.Tuple6.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e, 'f) => 'r,
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>,
) => 'r`  


### Tuple.Nested.Tuple6.curry
  
`let curry: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, unit> => 'r,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
) => 'r`  


### Tuple.Nested.Tuple6.encode
  
`let encode: (('a, 'b, 'c, 'd, 'e, 'f)) => t<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple6.decode
  
`let decode: t<'a, 'b, 'c, 'd, 'e, 'f> => ('a, 'b, 'c, 'd, 'e, 'f)`  


### Tuple.Nested.Tuple6.return
  
`let return: 'a => t<'a, 'a, 'a, 'a, 'a, 'a>`  


### Tuple.Nested.Tuple6.toList
  
`let toList: t<'a, 'a, 'a, 'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple6.napply
  
`let napply: (
  t<
    'a => 'ao,
    'b => 'bo,
    'c => 'co,
    'd => 'do,
    'e => 'eo,
    'f => 'fo,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f>,
) => t<'ao, 'bo, 'co, 'do, 'eo, 'fo>`  


### Tuple.Nested.Tuple6.ncompose
  
`let ncompose: (
  t<
    'fa => 'fao,
    'fb => 'fbo,
    'fc => 'fco,
    'fd => 'fdo,
    'fe => 'feo,
    'ff => 'ffo,
  >,
  t<
    'ga => 'fa,
    'gb => 'fb,
    'gc => 'fc,
    'gd => 'fd,
    'ge => 'fe,
    'gf => 'ff,
  >,
) => t<
  'ga => 'fao,
  'gb => 'fbo,
  'gc => 'fco,
  'gd => 'fdo,
  'ge => 'feo,
  'gf => 'ffo,
>`  


### Tuple.Nested.Tuple6.reverse
  
`let reverse: t<'a, 'b, 'c, 'd, 'e, 'f> => t<'f, 'e, 'd, 'c, 'b, 'a>`  


### Tuple.Nested.Tuple6.show
  
`let show: t<string, string, string, string, string, string> => string`  


### Tuple.Nested.Tuple6.mono
  
`let mono: (
  t<
    'a => 'b,
    'c => 'b,
    'd => 'b,
    'e => 'b,
    'f => 'b,
    'g => 'b,
  >,
  t<'a, 'c, 'd, 'e, 'f, 'g>,
) => array<'b>`  


### Tuple.Nested.Tuple6.all
  
`let all: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f>,
) => bool`  


### Tuple.Nested.Tuple6.some
  
`let some: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f>,
) => bool`  


### Tuple.Nested.Tuple6.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple6.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple6.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple6.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple6.set5
  
`let set5: (
  t6<'a, 'b, 'c, 'd, 'e, 'f>,
  'e,
) => t6<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple6.set6
  
`let set6: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
  'f,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>`  


### Tuple.Nested.Tuple6.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple6.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple6.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple6.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd`  


### Tuple.Nested.Tuple6.get5
  
`let get5: t6<'a, 'b, 'c, 'd, 'e, 'f> => 'e`  


### Tuple.Nested.Tuple6.get6
  
`let get6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'g> => 'f`  


### Tuple.Nested.Tuple7
  
  
### Tuple.Nested.Tuple7.t
  
`type t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = (
  'a,
  Tuple6.t<'b, 'c, 'd, 'e, 'f, 'g>,
)`  


### Tuple.Nested.Tuple7.units
  
`type units = (unit, Tuple5.units)`  


### Tuple.Nested.Tuple7.make
  
`let make: (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
) => t<'a, 'b, 'c, 'd, 'e, 'f, 'g>`  


### Tuple.Nested.Tuple7.units
  
`let units: (
  unit,
  (unit, (unit, (unit, (unit, (unit, Tuple1.t<unit>))))),
)`  


### Tuple.Nested.Tuple7.get
  
`let get: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'g`  


### Tuple.Nested.Tuple7.set
  
`let set: (
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>,
  'g,
) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>`  


### Tuple.Nested.Tuple7.over
  
`let over: (
  'f => 'f,
  t8<'a, 'b, 'f, 'd, 'e, 'f, 'f, 'z>,
) => t8<'a, 'b, 'f, 'd, 'e, 'f, 'f, 'z>`  


### Tuple.Nested.Tuple7.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'r,
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>,
) => 'r`  


### Tuple.Nested.Tuple7.curry
  
`let curry: (
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, unit> => 'r,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
) => 'r`  


### Tuple.Nested.Tuple7.encode
  
`let encode: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => t<'a, 'b, 'c, 'd, 'e, 'f, 'g>`  


### Tuple.Nested.Tuple7.decode
  
`let decode: t<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
> => ('a, 'b, 'c, 'd, 'e, 'f, 'g)`  


### Tuple.Nested.Tuple7.return
  
`let return: 'a => t<'a, 'a, 'a, 'a, 'a, 'a, 'a>`  


### Tuple.Nested.Tuple7.toList
  
`let toList: t<'a, 'a, 'a, 'a, 'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple7.napply
  
`let napply: (
  t<
    'a => 'ao,
    'b => 'bo,
    'c => 'co,
    'd => 'do,
    'e => 'eo,
    'f => 'fo,
    'g => 'go,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
) => t<'ao, 'bo, 'co, 'do, 'eo, 'fo, 'go>`  


### Tuple.Nested.Tuple7.ncompose
  
`let ncompose: (
  t<
    'fa => 'fao,
    'fb => 'fbo,
    'fc => 'fco,
    'fd => 'fdo,
    'fe => 'feo,
    'ff => 'ffo,
    'fg => 'fgo,
  >,
  t<
    'ga => 'fa,
    'gb => 'fb,
    'gc => 'fc,
    'gd => 'fd,
    'ge => 'fe,
    'gf => 'ff,
    'gg => 'fg,
  >,
) => t<
  'ga => 'fao,
  'gb => 'fbo,
  'gc => 'fco,
  'gd => 'fdo,
  'ge => 'feo,
  'gf => 'ffo,
  'gg => 'fgo,
>`  


### Tuple.Nested.Tuple7.reverse
  
`let reverse: t<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
> => t<'g, 'f, 'e, 'd, 'c, 'b, 'a>`  


### Tuple.Nested.Tuple7.show
  
`let show: t<
  string,
  string,
  string,
  string,
  string,
  string,
  string,
> => string`  


### Tuple.Nested.Tuple7.mono
  
`let mono: (
  t<
    'a => 'b,
    'c => 'b,
    'd => 'b,
    'e => 'b,
    'f => 'b,
    'g => 'b,
    'h => 'b,
  >,
  t<'a, 'c, 'd, 'e, 'f, 'g, 'h>,
) => array<'b>`  


### Tuple.Nested.Tuple7.all
  
`let all: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
    'g => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
) => bool`  


### Tuple.Nested.Tuple7.some
  
`let some: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
    'g => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
) => bool`  


### Tuple.Nested.Tuple7.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple7.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple7.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple7.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple7.set5
  
`let set5: (
  t6<'a, 'b, 'c, 'd, 'e, 'f>,
  'e,
) => t6<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple7.set6
  
`let set6: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
  'f,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>`  


### Tuple.Nested.Tuple7.set7
  
`let set7: (
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h>,
  'g,
) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h>`  


### Tuple.Nested.Tuple7.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple7.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple7.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple7.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd`  


### Tuple.Nested.Tuple7.get5
  
`let get5: t6<'a, 'b, 'c, 'd, 'e, 'f> => 'e`  


### Tuple.Nested.Tuple7.get6
  
`let get6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'g> => 'f`  


### Tuple.Nested.Tuple7.get7
  
`let get7: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h> => 'g`  

