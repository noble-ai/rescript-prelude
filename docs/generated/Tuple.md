# Tuple


### fst2

let fst2: (('a, 'b)) => 'a

### snd2

let snd2: (('a, 'b)) => 'b

### mapl2

let mapl2: (~f: 'a => 'b, ('a, 'c)) => ('b, 'c)

### mapr2

let mapr2: (~f: 'a => 'b, ('c, 'a)) => ('c, 'b)

### t2

type t2<'a, 'z> = ('a, 'z)

### t3

type t3<'a, 'b, 'z> = ('a, 'b, 'z)

### t4

type t4<'a, 'b, 'c, 'z> = ('a, 'b, 'c, 'z)

### t5

type t5<'a, 'b, 'c, 'd, 'z> = ('a, 'b, 'c, 'd, 'z)

### t6

type t6<'a, 'b, 'c, 'd, 'e, 'z> = ('a, 'b, 'c, 'd, 'e, 'z)

### t7

type t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'z,
)

### t8

type t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  'z,
)

### tuple1

type tuple1<'a> = t2<'a, unit>

### tuple2

type tuple2<'a, 'b> = t3<'a, 'b, unit>

### tuple3

type tuple3<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>

### tuple4

type tuple4<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>

### tuple5

type tuple5<'a, 'b, 'c, 'd, 'e> = t6<
  'a,
  'b,
  'c,
  'd,
  'e,
  unit,
>

### tuple6

type tuple6<'a, 'b, 'c, 'd, 'e, 'f> = t7<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  unit,
>

### tuple7

type tuple7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = t8<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  unit,
>

### return2

let return2: 'a => ('a, 'a)

### return3

let return3: 'a => ('a, 'a, 'a)

### return4

let return4: 'a => ('a, 'a, 'a, 'a)

### return5

let return5: 'a => ('a, 'a, 'a, 'a, 'a)

### return6

let return6: 'a => ('a, 'a, 'a, 'a, 'a, 'a)

### return7

let return7: 'a => ('a, 'a, 'a, 'a, 'a, 'a, 'a)

### curry2

let curry2: ((('a, 'b)) => 'c, 'a, 'b) => 'c

### curry3

let curry3: ((('a, 'b, 'c)) => 'd, 'a, 'b, 'c) => 'd

### curry4

let curry4: ((('a, 'b, 'c, 'd)) => 'e, 'a, 'b, 'c, 'd) => 'e

### curry5

let curry5: ((('a, 'b, 'c, 'd, 'e)) => 'f, 'a, 'b, 'c, 'd, 'e) => 'f

### curry6

let curry6: (
  (('a, 'b, 'c, 'd, 'e, 'f)) => 'g,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
) => 'g

### curry7

let curry7: (
  (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'h,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
) => 'h

### uncurry2

let uncurry2: (('a, 'b) => 'c, ('a, 'b)) => 'c

### uncurry3

let uncurry3: (('a, 'b, 'c) => 'd, ('a, 'b, 'c)) => 'd

### uncurry4

let uncurry4: (('a, 'b, 'c, 'd) => 'e, ('a, 'b, 'c, 'd)) => 'e

### uncurry5

let uncurry5: (('a, 'b, 'c, 'd, 'e) => 'f, ('a, 'b, 'c, 'd, 'e)) => 'f

### uncurry6

let uncurry6: (
  ('a, 'b, 'c, 'd, 'e, 'f) => 'g,
  ('a, 'b, 'c, 'd, 'e, 'f),
) => 'g

### uncurry7

let uncurry7: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'h,
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => 'h

### toList2

let toList2: (('a, 'a)) => array<'a>

### toList3

let toList3: (('a, 'a, 'a)) => array<'a>

### toList4

let toList4: (('a, 'a, 'a, 'a)) => array<'a>

### toList5

let toList5: (('a, 'a, 'a, 'a, 'a)) => array<'a>

### toList6

let toList6: (('a, 'a, 'a, 'a, 'a, 'a)) => array<'a>

### toList7

let toList7: (('a, 'a, 'a, 'a, 'a, 'a, 'a)) => array<'a>

### napply2

let napply2: (('a => 'b, 'c => 'd), ('a, 'c)) => ('b, 'd)

### napply3

let napply3: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('a, 'c, 'e),
) => ('b, 'd, 'f)

### napply4

let napply4: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('a, 'c, 'e, 'g),
) => ('b, 'd, 'f, 'h)

### napply5

let napply5: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('a, 'c, 'e, 'g, 'i),
) => ('b, 'd, 'f, 'h, 'j)

### napply6

let napply6: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
  ),
  ('a, 'c, 'e, 'g, 'i, 'k),
) => ('b, 'd, 'f, 'h, 'j, 'l)

### napply7

let napply7: (
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
) => ('b, 'd, 'f, 'h, 'j, 'l, 'n)

### ncompose2

let ncompose2: (
  ('a => 'b, 'c => 'd),
  ('e => 'a, 'f => 'c),
  'e,
) => ('b, 'f => 'd)

### ncompose3

let ncompose3: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('g => 'a, 'h => 'c, 'i => 'e),
  'g,
) => ('b, 'h => 'd, 'i => 'f)

### ncompose4

let ncompose4: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('i => 'a, 'j => 'c, 'k => 'e, 'l => 'g),
  'i,
) => ('b, 'j => 'd, 'k => 'f, 'l => 'h)

### ncompose5

let ncompose5: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('k => 'a, 'l => 'c, 'm => 'e, 'n => 'g, 'o => 'i),
  'k,
) => ('b, 'l => 'd, 'm => 'f, 'n => 'h, 'o => 'j)

### ncompose6

let ncompose6: (
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
) => ('b, 'n => 'd, 'o => 'f, 'p => 'h, 'q => 'j, 'r => 'l)

### ncompose7

let ncompose7: (
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
)

### reverse2

let reverse2: (('a, 'b)) => ('b, 'a)

### reverse3

let reverse3: (('a, 'b, 'c)) => ('c, 'b, 'a)

### reverse4

let reverse4: (('a, 'b, 'c, 'd)) => ('d, 'c, 'b, 'a)

### reverse5

let reverse5: (('a, 'b, 'c, 'd, 'e)) => ('e, 'd, 'c, 'b, 'a)

### reverse6

let reverse6: (('a, 'b, 'c, 'd, 'e, 'f)) => ('f, 'e, 'd, 'c, 'b, 'a)

### reverse7

let reverse7: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => ('g, 'f, 'e, 'd, 'c, 'b, 'a)

### mono

let mono: (('a, 'b) => 'c, 'c => 'd, 'a, 'b) => 'd

### all

let all: (('a, 'b) => 'c, 'c => Array.t<bool>, 'a, 'b) => bool

### some

let some: (('a, 'b) => 'c, 'c => Array.t<bool>, 'a, 'b) => bool

### Tuple2


### Tuple3


### Tuple4


### Tuple5


### Tuple6


### Tuple7


### Nested


