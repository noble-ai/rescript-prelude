let fst2: (('a, 'b)) => 'a
let snd2: (('a, 'b)) => 'b
let mapl2: (~f: 'a => 'b, ('a, 'c)) => ('b, 'c)
let mapr2: (~f: 'a => 'b, ('c, 'a)) => ('c, 'b)
type t2<'a, 'z> = ('a, 'z)
type t3<'a, 'b, 'z> = ('a, 'b, 'z)
type t4<'a, 'b, 'c, 'z> = ('a, 'b, 'c, 'z)
type t5<'a, 'b, 'c, 'd, 'z> = ('a, 'b, 'c, 'd, 'z)
type t6<'a, 'b, 'c, 'd, 'e, 'z> = ('a, 'b, 'c, 'd, 'e, 'z)
type t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = ('a, 'b, 'c, 'd, 'e, 'f, 'z)
type t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'z)
type tuple1<'a> = t2<'a, unit>
type tuple2<'a, 'b> = t3<'a, 'b, unit>
type tuple3<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>
type tuple4<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>
type tuple5<'a, 'b, 'c, 'd, 'e> = t6<'a, 'b, 'c, 'd, 'e, unit>
type tuple6<'a, 'b, 'c, 'd, 'e, 'f> = t7<'a, 'b, 'c, 'd, 'e, 'f, unit>
type tuple7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, unit>
let return2: 'a => ('a, 'a)
let return3: 'a => ('a, 'a, 'a)
let return4: 'a => ('a, 'a, 'a, 'a)
let return5: 'a => ('a, 'a, 'a, 'a, 'a)
let return6: 'a => ('a, 'a, 'a, 'a, 'a, 'a)
let return7: 'a => ('a, 'a, 'a, 'a, 'a, 'a, 'a)
let curry2: ((('a, 'b)) => 'c, 'a, 'b) => 'c
let curry3: ((('a, 'b, 'c)) => 'd, 'a, 'b, 'c) => 'd
let curry4: ((('a, 'b, 'c, 'd)) => 'e, 'a, 'b, 'c, 'd) => 'e
let curry5: ((('a, 'b, 'c, 'd, 'e)) => 'f, 'a, 'b, 'c, 'd, 'e) => 'f
let curry6: ((('a, 'b, 'c, 'd, 'e, 'f)) => 'g, 'a, 'b, 'c, 'd, 'e, 'f) => 'g
let curry7: ((('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'h, 'a, 'b, 'c, 'd, 'e, 'f, 'g) => 'h
let uncurry2: (('a, 'b) => 'c, ('a, 'b)) => 'c
let uncurry3: (('a, 'b, 'c) => 'd, ('a, 'b, 'c)) => 'd
let uncurry4: (('a, 'b, 'c, 'd) => 'e, ('a, 'b, 'c, 'd)) => 'e
let uncurry5: (('a, 'b, 'c, 'd, 'e) => 'f, ('a, 'b, 'c, 'd, 'e)) => 'f
let uncurry6: (('a, 'b, 'c, 'd, 'e, 'f) => 'g, ('a, 'b, 'c, 'd, 'e, 'f)) => 'g
let uncurry7: (('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'h, ('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'h
let toList2: (('a, 'a)) => array<'a>
let toList3: (('a, 'a, 'a)) => array<'a>
let toList4: (('a, 'a, 'a, 'a)) => array<'a>
let toList5: (('a, 'a, 'a, 'a, 'a)) => array<'a>
let toList6: (('a, 'a, 'a, 'a, 'a, 'a)) => array<'a>
let toList7: (('a, 'a, 'a, 'a, 'a, 'a, 'a)) => array<'a>
let napply2: (('a => 'b, 'c => 'd), ('a, 'c)) => ('b, 'd)
let napply3: (('a => 'b, 'c => 'd, 'e => 'f), ('a, 'c, 'e)) => ('b, 'd, 'f)
let napply4: (('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h), ('a, 'c, 'e, 'g)) => ('b, 'd, 'f, 'h)
let napply5: (('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j), ('a, 'c, 'e, 'g, 'i)) => (
  'b,
  'd,
  'f,
  'h,
  'j,
)
let napply6: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j, 'k => 'l),
  ('a, 'c, 'e, 'g, 'i, 'k),
) => ('b, 'd, 'f, 'h, 'j, 'l)
let napply7: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j, 'k => 'l, 'm => 'n),
  ('a, 'c, 'e, 'g, 'i, 'k, 'm),
) => ('b, 'd, 'f, 'h, 'j, 'l, 'n)
let ncompose2: (('a => 'b, 'c => 'd), ('e => 'a, 'f => 'c), 'e) => ('b, 'f => 'd)
let ncompose3: (('a => 'b, 'c => 'd, 'e => 'f), ('g => 'a, 'h => 'c, 'i => 'e), 'g) => (
  'b,
  'h => 'd,
  'i => 'f,
)
let ncompose4: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('i => 'a, 'j => 'c, 'k => 'e, 'l => 'g),
  'i,
) => ('b, 'j => 'd, 'k => 'f, 'l => 'h)
let ncompose5: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('k => 'a, 'l => 'c, 'm => 'e, 'n => 'g, 'o => 'i),
  'k,
) => ('b, 'l => 'd, 'm => 'f, 'n => 'h, 'o => 'j)
let ncompose6: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j, 'k => 'l),
  ('m => 'a, 'n => 'c, 'o => 'e, 'p => 'g, 'q => 'i, 'r => 'k),
  'm,
) => ('b, 'n => 'd, 'o => 'f, 'p => 'h, 'q => 'j, 'r => 'l)
let ncompose7: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j, 'k => 'l, 'm => 'n),
  ('o => 'a, 'p => 'c, 'q => 'e, 'r => 'g, 's => 'i, 't => 'k, 'u => 'm),
  'o,
) => ('b, 'p => 'd, 'q => 'f, 'r => 'h, 's => 'j, 't => 'l, 'u => 'n)
let reverse2: (('a, 'b)) => ('b, 'a)
let reverse3: (('a, 'b, 'c)) => ('c, 'b, 'a)
let reverse4: (('a, 'b, 'c, 'd)) => ('d, 'c, 'b, 'a)
let reverse5: (('a, 'b, 'c, 'd, 'e)) => ('e, 'd, 'c, 'b, 'a)
let reverse6: (('a, 'b, 'c, 'd, 'e, 'f)) => ('f, 'e, 'd, 'c, 'b, 'a)
let reverse7: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => ('g, 'f, 'e, 'd, 'c, 'b, 'a)
let mono: (('a, 'b) => 'c, 'c => 'd, 'a, 'b) => 'd
let all: (('a, 'b) => 'c, 'c => Array.t<bool>, 'a, 'b) => bool
let some: (('a, 'b) => 'c, 'c => Array.t<bool>, 'a, 'b) => bool
module Tuple2: {
  type t<'a, 'b> = ('a, 'b)
  let make: ('a, 'b) => ('a, 'b)
  let uncurry: (('a, 'b) => 'c, ('a, 'b)) => 'c
  let curry: ((('a, 'b)) => 'c, 'a, 'b) => 'c
  let return: 'a => ('a, 'a)
  let toList: (('a, 'a)) => array<'a>
  let napply: (('a => 'b, 'c => 'd), ('a, 'c)) => ('b, 'd)
  let ncompose: (('a => 'b, 'c => 'd), ('e => 'a, 'f => 'c), 'e) => ('b, 'f => 'd)
  let show: ((string, string)) => string
  let mono: (('a => 'b, 'c => 'b), ('a, 'c)) => array<'b>
  let all: (('a => bool, 'b => bool), ('a, 'b)) => bool
  let some: (('a => bool, 'b => bool), ('a, 'b)) => bool
  let get1: (('a, 'b)) => 'a
  let get2: (('a, 'b)) => 'b
}
module Tuple3: {
  type t<'a, 'b, 'c> = ('a, 'b, 'c)
  let make: ('a, 'b, 'c) => ('a, 'b, 'c)
  let uncurry: (('a, 'b, 'c) => 'd, ('a, 'b, 'c)) => 'd
  let curry: ((('a, 'b, 'c)) => 'd, 'a, 'b, 'c) => 'd
  let return: 'a => ('a, 'a, 'a)
  let toList: (('a, 'a, 'a)) => array<'a>
  let napply: (('a => 'b, 'c => 'd, 'e => 'f), ('a, 'c, 'e)) => ('b, 'd, 'f)
  let ncompose: (('a => 'b, 'c => 'd, 'e => 'f), ('g => 'a, 'h => 'c, 'i => 'e), 'g) => (
  'b,
  'h => 'd,
  'i => 'f,
)
  let show: ((string, string, string)) => string
  let mono: (('a => 'b, 'c => 'b, 'd => 'b), ('a, 'c, 'd)) => array<'b>
  let all: (('a => bool, 'b => bool, 'c => bool), ('a, 'b, 'c)) => bool
  let some: (('a => bool, 'b => bool, 'c => bool), ('a, 'b, 'c)) => bool
  let get1: (('a, 'b, 'c)) => 'a
  let get2: (('a, 'b, 'c)) => 'b
  let get3: (('a, 'b, 'c)) => 'c
}
module Tuple4: {
  type t<'a, 'b, 'c, 'd> = ('a, 'b, 'c, 'd)
  let make: ('a, 'b, 'c, 'd) => ('a, 'b, 'c, 'd)
  let uncurry: (('a, 'b, 'c, 'd) => 'e, ('a, 'b, 'c, 'd)) => 'e
  let curry: ((('a, 'b, 'c, 'd)) => 'e, 'a, 'b, 'c, 'd) => 'e
  let return: 'a => ('a, 'a, 'a, 'a)
  let toList: (('a, 'a, 'a, 'a)) => array<'a>
  let napply: (('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h), ('a, 'c, 'e, 'g)) => ('b, 'd, 'f, 'h)
  let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('i => 'a, 'j => 'c, 'k => 'e, 'l => 'g),
  'i,
) => ('b, 'j => 'd, 'k => 'f, 'l => 'h)
  let show: ((string, string, string, string)) => string
  let mono: (('a => 'b, 'c => 'b, 'd => 'b, 'e => 'b), ('a, 'c, 'd, 'e)) => array<'b>
  let all: (('a => bool, 'b => bool, 'c => bool, 'd => bool), ('a, 'b, 'c, 'd)) => bool
  let some: (('a => bool, 'b => bool, 'c => bool, 'd => bool), ('a, 'b, 'c, 'd)) => bool
  let get1: (('a, 'b, 'c, 'd)) => 'a
  let get2: (('a, 'b, 'c, 'd)) => 'b
  let get3: (('a, 'b, 'c, 'd)) => 'c
  let get4: (('a, 'b, 'c, 'd)) => 'd
}
module Tuple5: {
  type t<'a, 'b, 'c, 'd, 'e> = ('a, 'b, 'c, 'd, 'e)
  let make: ('a, 'b, 'c, 'd, 'e) => ('a, 'b, 'c, 'd, 'e)
  let uncurry: (('a, 'b, 'c, 'd, 'e) => 'f, ('a, 'b, 'c, 'd, 'e)) => 'f
  let curry: ((('a, 'b, 'c, 'd, 'e)) => 'f, 'a, 'b, 'c, 'd, 'e) => 'f
  let return: 'a => ('a, 'a, 'a, 'a, 'a)
  let toList: (('a, 'a, 'a, 'a, 'a)) => array<'a>
  let napply: (('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j), ('a, 'c, 'e, 'g, 'i)) => (
  'b,
  'd,
  'f,
  'h,
  'j,
)
  let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('k => 'a, 'l => 'c, 'm => 'e, 'n => 'g, 'o => 'i),
  'k,
) => ('b, 'l => 'd, 'm => 'f, 'n => 'h, 'o => 'j)
  let show: ((string, string, string, string, string)) => string
  let mono: (('a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b), ('a, 'c, 'd, 'e, 'f)) => array<'b>
  let all: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool),
  ('a, 'b, 'c, 'd, 'e),
) => bool
  let some: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool),
  ('a, 'b, 'c, 'd, 'e),
) => bool
  let get1: (('a, 'b, 'c, 'd, 'e)) => 'a
  let get2: (('a, 'b, 'c, 'd, 'e)) => 'b
  let get3: (('a, 'b, 'c, 'd, 'e)) => 'c
  let get4: (('a, 'b, 'c, 'd, 'e)) => 'd
  let get5: (('a, 'b, 'c, 'd, 'e)) => 'e
}
module Tuple6: {
  type t<'a, 'b, 'c, 'd, 'e, 'f> = ('a, 'b, 'c, 'd, 'e, 'f)
  let make: ('a, 'b, 'c, 'd, 'e, 'f) => ('a, 'b, 'c, 'd, 'e, 'f)
  let uncurry: (('a, 'b, 'c, 'd, 'e, 'f) => 'g, ('a, 'b, 'c, 'd, 'e, 'f)) => 'g
  let curry: ((('a, 'b, 'c, 'd, 'e, 'f)) => 'g, 'a, 'b, 'c, 'd, 'e, 'f) => 'g
  let return: 'a => ('a, 'a, 'a, 'a, 'a, 'a)
  let toList: (('a, 'a, 'a, 'a, 'a, 'a)) => array<'a>
  let napply: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j, 'k => 'l),
  ('a, 'c, 'e, 'g, 'i, 'k),
) => ('b, 'd, 'f, 'h, 'j, 'l)
  let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j, 'k => 'l),
  ('m => 'a, 'n => 'c, 'o => 'e, 'p => 'g, 'q => 'i, 'r => 'k),
  'm,
) => ('b, 'n => 'd, 'o => 'f, 'p => 'h, 'q => 'j, 'r => 'l)
  let show: ((string, string, string, string, string, string)) => string
  let mono: (
  ('a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b, 'g => 'b),
  ('a, 'c, 'd, 'e, 'f, 'g),
) => array<'b>
  let all: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool, 'f => bool),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => bool
  let some: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool, 'f => bool),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => bool
  let get1: (('a, 'b, 'c, 'd, 'e, 'f)) => 'a
  let get2: (('a, 'b, 'c, 'd, 'e, 'f)) => 'b
  let get3: (('a, 'b, 'c, 'd, 'e, 'f)) => 'c
  let get4: (('a, 'b, 'c, 'd, 'e, 'f)) => 'd
  let get5: (('a, 'b, 'c, 'd, 'e, 'f)) => 'e
  let get6: (('a, 'b, 'c, 'd, 'e, 'f)) => 'f
}
module Tuple7: {
  type t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = ('a, 'b, 'c, 'd, 'e, 'f, 'g)
  let make: ('a, 'b, 'c, 'd, 'e, 'f, 'g) => ('a, 'b, 'c, 'd, 'e, 'f, 'g)
  let uncurry: (('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'h, ('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'h
  let curry: ((('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'h, 'a, 'b, 'c, 'd, 'e, 'f, 'g) => 'h
  let return: 'a => ('a, 'a, 'a, 'a, 'a, 'a, 'a)
  let toList: (('a, 'a, 'a, 'a, 'a, 'a, 'a)) => array<'a>
  let napply: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j, 'k => 'l, 'm => 'n),
  ('a, 'c, 'e, 'g, 'i, 'k, 'm),
) => ('b, 'd, 'f, 'h, 'j, 'l, 'n)
  let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j, 'k => 'l, 'm => 'n),
  ('o => 'a, 'p => 'c, 'q => 'e, 'r => 'g, 's => 'i, 't => 'k, 'u => 'm),
  'o,
) => ('b, 'p => 'd, 'q => 'f, 'r => 'h, 's => 'j, 't => 'l, 'u => 'n)
  let show: ((string, string, string, string, string, string, string)) => string
  let mono: (
  ('a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b, 'g => 'b, 'h => 'b),
  ('a, 'c, 'd, 'e, 'f, 'g, 'h),
) => array<'b>
  let all: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool, 'f => bool, 'g => bool),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => bool
  let some: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool, 'f => bool, 'g => bool),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => bool
  let get1: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'a
  let get2: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'b
  let get3: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'c
  let get4: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'd
  let get5: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'e
  let get6: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'f
  let get7: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'g
}
module Nested: {
  type t<'a, 'z> = ('a, 'z)
  type t2<'a, 'z> = t<'a, 'z>
  type t3<'a, 'b, 'z> = t<'a, t2<'b, 'z>>
  type t4<'a, 'b, 'c, 'z> = t<'a, t3<'b, 'c, 'z>>
  type t5<'a, 'b, 'c, 'd, 'z> = t<'a, t4<'b, 'c, 'd, 'z>>
  type t6<'a, 'b, 'c, 'd, 'e, 'z> = t<'a, t5<'b, 'c, 'd, 'e, 'z>>
  type t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = t<'a, t6<'b, 'c, 'd, 'e, 'f, 'z>>
  type t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = t<'a, t7<'b, 'c, 'd, 'e, 'f, 'g, 'z>>
  type t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z> = t<'a, t8<'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z>>
  let t2: ('a, 'z) => t2<'a, 'z>
  let t3: ('a, 'b, 'z) => t3<'a, 'b, 'z>
  let t4: ('a, 'b, 'c, 'z) => t4<'a, 'b, 'c, 'z>
  let t5: ('a, 'b, 'c, 'd, 'z) => t5<'a, 'b, 'c, 'd, 'z>
  let t6: ('a, 'b, 'c, 'd, 'e, 'z) => t6<'a, 'b, 'c, 'd, 'e, 'z>
  let t7: ('a, 'b, 'c, 'd, 'e, 'f, 'z) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>
  let t8: ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'z) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>
  let t9: ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z) => t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z>
  type tuple1<'a> = t2<'a, unit>
  type tuple2<'a, 'b> = t3<'a, 'b, unit>
  type tuple3<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>
  type tuple4<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>
  type tuple5<'a, 'b, 'c, 'd, 'e> = t6<'a, 'b, 'c, 'd, 'e, unit>
  type tuple6<'a, 'b, 'c, 'd, 'e, 'f> = t7<'a, 'b, 'c, 'd, 'e, 'f, unit>
  type tuple7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, unit>
  type tuple8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h> = t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, unit>
  let rest: t<'a, 'b> => 'b
  let get1: t2<'a, 'z> => 'a
  let get2: t3<'a, 'b, 'z> => 'b
  let get3: t4<'a, 'b, 'c, 'z> => 'c
  let get4: t5<'a, 'b, 'c, 'd, 'z> => 'd
  let get5: t6<'a, 'b, 'c, 'd, 'e, 'z> => 'e
  let get6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'f
  let get7: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'g
  let set1: (t2<'a, 'z>, 'b) => t2<'b, 'z>
  let set2: (t3<'a, 'b, 'z>, 'b) => t3<'a, 'b, 'z>
  let set3: (t4<'a, 'b, 'c, 'z>, 'c) => t4<'a, 'b, 'c, 'z>
  let set4: (t5<'a, 'b, 'c, 'd, 'z>, 'd) => t5<'a, 'b, 'c, 'd, 'z>
  let set5: (t6<'a, 'b, 'c, 'd, 'e, 'z>, 'e) => t6<'a, 'b, 'c, 'd, 'e, 'z>
  let set6: (t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>, 'f) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>
  let set7: (t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>, 'g) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>
  module Tuple1: {
    type t<'a> = tuple1<'a>
    type units = t<unit>
    let make: 'a => t<'a>
    let units: t<unit>
    let over1: ('a => 'r, t2<'a, 'z>) => t2<'r, 'z>
    let uncurry: ('a => 'r, t2<'a, 'z>) => 'r
    let curry: (t<'a> => 'r, 'a) => 'r
    let return: 'a => t<'a>
    let toList: t<'a> => array<'a>
    let napply: (t<'a => 'ao>, t<'a>) => t<'ao>
    let ncompose: (t<'fa => 'fao>, t<'ga => 'fa>) => t<'ga => 'fao>
    external reverse: t<'a> => t<'a> = "%identity"
    let show: t<string> => string
    let encode: 'a => ('a, unit)
    let decode: (('a, 'b)) => 'a
    let mono: (t<'a => 'b>, t<'a>) => array<'b>
    let all: (t<'a => bool>, t<'a>) => bool
    let some: (t<'a => bool>, t<'a>) => bool
    let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>
    let get1: t<'a> => 'a
  }
  module Tuple2: {
    type t<'a, 'b> = t3<'a, 'b, unit>
    let make: ('a, 'b) => t<'a, 'b>
    type units = (unit, Tuple1.units)
    let units: (unit, Tuple1.t<unit>)
    let over: ('b => 'r, t3<'a, 'b, 'z>) => t3<'a, 'r, 'z>
    let uncurry: (('a, 'b) => 'r, t3<'a, 'b, 'z>) => 'r
    let curry: (t<'a, 'b> => 'r, 'a, 'b) => 'r
    let encode: (('a, 'b)) => t<'a, 'b>
    let decode: t<'a, 'b> => ('a, 'b)
    let return: 'a => t<'a, 'a>
    let toList: t<'a, 'a> => array<'a>
    let napply: (t<'a => 'ao, 'b => 'bo>, t<'a, 'b>) => t<'ao, 'bo>
    let ncompose: (t<'fa => 'fao, 'fb => 'fbo>, t<'ga => 'fa, 'gb => 'fb>) => t<
  'ga => 'fao,
  'gb => 'fbo,
>
    let reverse: t<'a, 'b> => t<'b, 'a>
    let show: t<string, string> => string
    let mono: (t<'a => 'b, 'c => 'b>, t<'a, 'c>) => array<'b>
    let all: (t<'a => bool, 'b => bool>, t<'a, 'b>) => bool
    let some: (t<'a => bool, 'b => bool>, t<'a, 'b>) => bool
    let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>
    let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>
    let get1: t<'a, 'b> => 'a
    let get2: t<'a, 'b> => 'b
  }
  module Tuple3: {
    type t<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>
    let make: ('a, 'b, 'c) => t<'a, 'b, 'c>
    type units = (unit, Tuple2.units)
    let units: (unit, (unit, Tuple1.t<unit>))
    let over: ('c => 'r, t4<'a, 'b, 'c, 'z>) => t4<'a, 'b, 'r, 'z>
    let uncurry: (('a, 'b, 'c) => 'r, t4<'a, 'b, 'c, 'z>) => 'r
    let curry: (t<'a, 'b, 'c> => 'r, 'a, 'b, 'c) => 'r
    let encode: (('a, 'b, 'c)) => t<'a, 'b, 'c>
    let decode: t<'a, 'b, 'c> => ('a, 'b, 'c)
    let return: 'a => t<'a, 'a, 'a>
    let toList: t<'a, 'a, 'a> => array<'a>
    let napply: (t<'a => 'ao, 'b => 'bo, 'c => 'co>, t<'a, 'b, 'c>) => t<'ao, 'bo, 'co>
    let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco>,
  t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc>,
) => t<'ga => 'fao, 'gb => 'fbo, 'gc => 'fco>
    let reverse: t<'a, 'b, 'c> => t<'c, 'b, 'a>
    let show: t<string, string, string> => string
    let mono: (t<'a => 'b, 'c => 'b, 'd => 'b>, t<'a, 'c, 'd>) => array<'b>
    let all: (t<'a => bool, 'b => bool, 'c => bool>, t<'a, 'b, 'c>) => bool
    let some: (t<'a => bool, 'b => bool, 'c => bool>, t<'a, 'b, 'c>) => bool
    let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>
    let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>
    let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>
    let get1: t2<'a, 'b> => 'a
    let get2: t3<'a, 'b, 'c> => 'b
    let get3: t4<'a, 'b, 'c, 'd> => 'c
  }
  module Tuple4: {
    type t<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>
    let make: ('a, 'b, 'c, 'd) => t<'a, 'b, 'c, 'd>
    type units = (unit, Tuple3.units)
    let units: (unit, (unit, (unit, Tuple1.t<unit>)))
    let over: ('d => 'd, t5<'a, 'b, 'd, 'd, 'z>) => t5<'a, 'b, 'd, 'd, 'z>
    let uncurry: (('a, 'b, 'c, 'd) => 'r, t5<'a, 'b, 'c, 'd, 'z>) => 'r
    let curry: (t<'a, 'b, 'c, 'd> => 'r, 'a, 'b, 'c, 'd) => 'r
    let encode: (('a, 'b, 'c, 'd)) => t<'a, 'b, 'c, 'd>
    let decode: t<'a, 'b, 'c, 'd> => ('a, 'b, 'c, 'd)
    let return: 'a => t<'a, 'a, 'a, 'a>
    let toList: t<'a, 'a, 'a, 'a> => array<'a>
    let napply: (t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do>, t<'a, 'b, 'c, 'd>) => t<
  'ao,
  'bo,
  'co,
  'do,
>
    let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo>,
  t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd>,
) => t<'ga => 'fao, 'gb => 'fbo, 'gc => 'fco, 'gd => 'fdo>
    let reverse: t<'a, 'b, 'c, 'd> => t<'d, 'c, 'b, 'a>
    let show: t<string, string, string, string> => string
    let mono: (t<'a => 'b, 'c => 'b, 'd => 'b, 'e => 'b>, t<'a, 'c, 'd, 'e>) => array<'b>
    let all: (t<'a => bool, 'b => bool, 'c => bool, 'd => bool>, t<'a, 'b, 'c, 'd>) => bool
    let some: (t<'a => bool, 'b => bool, 'c => bool, 'd => bool>, t<'a, 'b, 'c, 'd>) => bool
    let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>
    let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>
    let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>
    let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>
    let get1: t2<'a, 'b> => 'a
    let get2: t3<'a, 'b, 'c> => 'b
    let get3: t4<'a, 'b, 'c, 'd> => 'c
    let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd
  }
  module Tuple5: {
    type t<'a, 'b, 'c, 'd, 'e> = t6<'a, 'b, 'c, 'd, 'e, unit>
    type units = (unit, Tuple4.units)
    let units: (unit, (unit, (unit, (unit, Tuple1.t<unit>))))
    let make: ('a, 'b, 'c, 'd, 'e) => t<'a, 'b, 'c, 'd, 'e>
    let over: ('e => 'e, t6<'a, 'b, 'e, 'd, 'e, 'z>) => t6<'a, 'b, 'e, 'd, 'e, 'z>
    let uncurry: (('a, 'b, 'c, 'd, 'e) => 'r, t6<'a, 'b, 'c, 'd, 'e, 'z>) => 'r
    let curry: (t<'a, 'b, 'c, 'd, 'e> => 'r, 'a, 'b, 'c, 'd, 'e) => 'r
    let encode: (('a, 'b, 'c, 'd, 'e)) => t<'a, 'b, 'c, 'd, 'e>
    let decode: t<'a, 'b, 'c, 'd, 'e> => ('a, 'b, 'c, 'd, 'e)
    let return: 'a => t<'a, 'a, 'a, 'a, 'a>
    let toList: t<'a, 'a, 'a, 'a, 'a> => array<'a>
    let napply: (t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do, 'e => 'eo>, t<'a, 'b, 'c, 'd, 'e>) => t<
  'ao,
  'bo,
  'co,
  'do,
  'eo,
>
    let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo, 'fe => 'feo>,
  t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd, 'ge => 'fe>,
) => t<'ga => 'fao, 'gb => 'fbo, 'gc => 'fco, 'gd => 'fdo, 'ge => 'feo>
    let reverse: t<'a, 'b, 'c, 'd, 'e> => t<'e, 'd, 'c, 'b, 'a>
    let show: t<string, string, string, string, string> => string
    let mono: (t<'a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b>, t<'a, 'c, 'd, 'e, 'f>) => array<'b>
    let all: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool>,
  t<'a, 'b, 'c, 'd, 'e>,
) => bool
    let some: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool>,
  t<'a, 'b, 'c, 'd, 'e>,
) => bool
    let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>
    let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>
    let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>
    let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>
    let set5: (t6<'a, 'b, 'c, 'd, 'e, 'f>, 'e) => t6<'a, 'b, 'c, 'd, 'e, 'f>
    let get1: t2<'a, 'b> => 'a
    let get2: t3<'a, 'b, 'c> => 'b
    let get3: t4<'a, 'b, 'c, 'd> => 'c
    let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd
    let get5: t6<'a, 'b, 'c, 'd, 'e, 'f> => 'e
  }
  module Tuple6: {
    type t<'a, 'b, 'c, 'd, 'e, 'f> = ('a, Tuple5.t<'b, 'c, 'd, 'e, 'f>)
    type units = (unit, Tuple5.units)
    let make: ('a, 'b, 'c, 'd, 'e, 'f) => t<'a, 'b, 'c, 'd, 'e, 'f>
    let units: (unit, (unit, (unit, (unit, (unit, Tuple1.t<unit>)))))
    let get: t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'f
    let set: (t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>, 'f) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>
    let over: ('f => 'f, t7<'a, 'b, 'f, 'd, 'e, 'f, 'z>) => t7<'a, 'b, 'f, 'd, 'e, 'f, 'z>
    let uncurry: (('a, 'b, 'c, 'd, 'e, 'f) => 'r, t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>) => 'r
    let curry: (t7<'a, 'b, 'c, 'd, 'e, 'f, unit> => 'r, 'a, 'b, 'c, 'd, 'e, 'f) => 'r
    let encode: (('a, 'b, 'c, 'd, 'e, 'f)) => t<'a, 'b, 'c, 'd, 'e, 'f>
    let decode: t<'a, 'b, 'c, 'd, 'e, 'f> => ('a, 'b, 'c, 'd, 'e, 'f)
    let return: 'a => t<'a, 'a, 'a, 'a, 'a, 'a>
    let toList: t<'a, 'a, 'a, 'a, 'a, 'a> => array<'a>
    let napply: (
  t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do, 'e => 'eo, 'f => 'fo>,
  t<'a, 'b, 'c, 'd, 'e, 'f>,
) => t<'ao, 'bo, 'co, 'do, 'eo, 'fo>
    let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo, 'fe => 'feo, 'ff => 'ffo>,
  t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd, 'ge => 'fe, 'gf => 'ff>,
) => t<'ga => 'fao, 'gb => 'fbo, 'gc => 'fco, 'gd => 'fdo, 'ge => 'feo, 'gf => 'ffo>
    let reverse: t<'a, 'b, 'c, 'd, 'e, 'f> => t<'f, 'e, 'd, 'c, 'b, 'a>
    let show: t<string, string, string, string, string, string> => string
    let mono: (
  t<'a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b, 'g => 'b>,
  t<'a, 'c, 'd, 'e, 'f, 'g>,
) => array<'b>
    let all: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool, 'f => bool>,
  t<'a, 'b, 'c, 'd, 'e, 'f>,
) => bool
    let some: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool, 'f => bool>,
  t<'a, 'b, 'c, 'd, 'e, 'f>,
) => bool
    let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>
    let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>
    let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>
    let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>
    let set5: (t6<'a, 'b, 'c, 'd, 'e, 'f>, 'e) => t6<'a, 'b, 'c, 'd, 'e, 'f>
    let set6: (t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>, 'f) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>
    let get1: t2<'a, 'b> => 'a
    let get2: t3<'a, 'b, 'c> => 'b
    let get3: t4<'a, 'b, 'c, 'd> => 'c
    let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd
    let get5: t6<'a, 'b, 'c, 'd, 'e, 'f> => 'e
    let get6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'g> => 'f
  }
  module Tuple7: {
    type t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = ('a, Tuple6.t<'b, 'c, 'd, 'e, 'f, 'g>)
    type units = (unit, Tuple5.units)
    let make: ('a, 'b, 'c, 'd, 'e, 'f, 'g) => t<'a, 'b, 'c, 'd, 'e, 'f, 'g>
    let units: (unit, (unit, (unit, (unit, (unit, (unit, Tuple1.t<unit>))))))
    let get: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'g
    let set: (t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>, 'g) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>
    let over: ('f => 'f, t8<'a, 'b, 'f, 'd, 'e, 'f, 'f, 'z>) => t8<'a, 'b, 'f, 'd, 'e, 'f, 'f, 'z>
    let uncurry: (('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'r, t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>) => 'r
    let curry: (t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, unit> => 'r, 'a, 'b, 'c, 'd, 'e, 'f, 'g) => 'r
    let encode: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => t<'a, 'b, 'c, 'd, 'e, 'f, 'g>
    let decode: t<'a, 'b, 'c, 'd, 'e, 'f, 'g> => ('a, 'b, 'c, 'd, 'e, 'f, 'g)
    let return: 'a => t<'a, 'a, 'a, 'a, 'a, 'a, 'a>
    let toList: t<'a, 'a, 'a, 'a, 'a, 'a, 'a> => array<'a>
    let napply: (
  t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do, 'e => 'eo, 'f => 'fo, 'g => 'go>,
  t<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
) => t<'ao, 'bo, 'co, 'do, 'eo, 'fo, 'go>
    let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo, 'fe => 'feo, 'ff => 'ffo, 'fg => 'fgo>,
  t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd, 'ge => 'fe, 'gf => 'ff, 'gg => 'fg>,
) => t<'ga => 'fao, 'gb => 'fbo, 'gc => 'fco, 'gd => 'fdo, 'ge => 'feo, 'gf => 'ffo, 'gg => 'fgo>
    let reverse: t<'a, 'b, 'c, 'd, 'e, 'f, 'g> => t<'g, 'f, 'e, 'd, 'c, 'b, 'a>
    let show: t<string, string, string, string, string, string, string> => string
    let mono: (
  t<'a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b, 'g => 'b, 'h => 'b>,
  t<'a, 'c, 'd, 'e, 'f, 'g, 'h>,
) => array<'b>
    let all: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool, 'f => bool, 'g => bool>,
  t<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
) => bool
    let some: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool, 'e => bool, 'f => bool, 'g => bool>,
  t<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
) => bool
    let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>
    let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>
    let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>
    let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>
    let set5: (t6<'a, 'b, 'c, 'd, 'e, 'f>, 'e) => t6<'a, 'b, 'c, 'd, 'e, 'f>
    let set6: (t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>, 'f) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>
    let set7: (t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h>, 'g) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h>
    let get1: t2<'a, 'b> => 'a
    let get2: t3<'a, 'b, 'c> => 'b
    let get3: t4<'a, 'b, 'c, 'd> => 'c
    let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd
    let get5: t6<'a, 'b, 'c, 'd, 'e, 'f> => 'e
    let get6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'g> => 'f
    let get7: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h> => 'g
  }
}
