# Array


### t

type t<'a> = array<'a>

### fromIterable

let fromIterable: Iterable.t<'t> => t<'t>

### return

let return: 'a => t<'a>

### clone

let clone: t<'a> => t<'a>

### range

let range: int => t<int>

### rangeInclusive

let rangeInclusive: int => t<int>
Use range instead

### rangeInclusive

let rangeInclusive: int => t<int>

### toIterable

let toIterable: t<'t> => Iterable.t<'t>

### length

let length: t<'a> => int

### includes

let includes: (t<'a>, 'a) => bool

### forEach

let forEach: (t<'a>, 'a => unit) => unit

### forEachi

let forEachi: (t<'a>, ('a, int) => unit) => unit

### tap

let tap: (t<'a>, t<'a> => unit) => t<'a>

### tapMap

let tapMap: (t<'a>, 'a => unit) => t<'a>

### get

let get: (t<'a>, int) => option<'a>

### getUnsafe

let getUnsafe: (t<'a>, int) => 'a

### getExn

let getExn: (t<'a>, int) => 'a

### indexOf

let indexOf: (t<'a>, 'a) => int

### indexOf

let indexOf: (t<'a>, 'a) => option<int>
Use findIndex instead

### y

let y: unit => option<int>

### findIndex

let findIndex: (t<'a>, 'a => bool) => int

### findIndex

let findIndex: (t<'a>, 'a => bool) => option<int>

### getIndexBy

let getIndexBy: (t<'a>, 'a => bool) => option<int>
Use findIndex instead

### all

let all: (t<'a>, 'a => bool) => bool

### every

let every: (t<'a>, 'a => bool) => bool
Use all instead

### alli

let alli: (t<'a>, ('a, int) => bool) => bool

### everyi

let everyi: (t<'a>, ('a, int) => bool) => bool
Use alli instead

### some

let some: (t<'a>, 'a => bool) => bool

### somei

let somei: (t<'a>, ('a, int) => bool) => bool

### isEmpty

let isEmpty: t<'a> => bool

### Mut


### setUnsafe

let setUnsafe: (t<'a>, int, 'a) => t<'a>

### set

let set: (t<'a>, int, 'a) => t<'a>

### map

let map: (t<'a>, 'a => 'b) => t<'b>

### mapi

let mapi: (t<'a>, ('a, int) => 'b) => t<'b>

### const

let const: (t<'x>, 'b) => t<'b>

### bind

let bind: (t<'a>, 'a => t<'b>) => t<'b>

### bindi

let bindi: (t<'a>, ('a, int) => t<'b>) => t<'b>

### identity

let identity: 'a => 'a

### join

let join: t<t<'a>> => t<'a>

### flatten

let flatten: t<t<'a>> => t<'a>
use join instead

### filter

let filter: (t<'a>, 'a => bool) => t<'a>

### filteri

let filteri: (t<'a>, ('a, int) => bool) => t<'a>

### keepMap

let keepMap: (t<'a>, 'a => option<'b>) => array<'b>

### catOptions

let catOptions: t<option<'a>> => t<'a>

### keepBind

let keepBind: (t<option<'a>>, 'a => option<'b>) => t<'b>

### first

let first: (t<'a>, 'a => bool) => option<'a>

### firsti

let firsti: (t<'a>, ('a, int) => bool) => option<'a>

### find

let find: (t<'a>, 'a => bool) => option<'a>
Use first instead

### findi

let findi: (t<'a>, ('a, int) => bool) => option<'a>
Use firsti instead

### firstOption

let firstOption: (t<'a>, 'a => option<'b>) => option<'b>

### firstEq

let firstEq: (t<'a>, 'a) => option<'a>

### findEq

let findEq: (t<'a>, 'a) => option<'a>

### firstBy

let firstBy: (t<'a>, 'a => 'b, 'b) => option<'a>

### findBy

let findBy: (t<'a>, 'a => 'b, 'b) => option<'a>
Use firstBy instead

### last

let last: (t<'a>, 'a => bool) => option<'a>

### lasti

let lasti: (t<'a>, ('a, int) => bool) => option<'a>

### findLast

let findLast: (t<'a>, 'a => bool) => option<'a>
Use last instead

### findLasti

let findLasti: (t<'a>, ('a, int) => bool) => option<'a>
Use lasti instead

### joinWith

let joinWith: (t<string>, string) => string

### reduce

let reduce: (t<'a>, ('b, 'a) => 'b, 'b) => 'b

### reducei

let reducei: (t<'a>, ('b, 'a, int) => 'b, 'b) => 'b

### reverse

let reverse: t<'a> => t<'a>

### toIndices

let toIndices: t<'a> => t<int>

### sort

let sort: t<'a> => t<'a>

### sortCmp

let sortCmp: (t<'a>, ('a, 'a) => int) => t<'a>

### slice

let slice: (t<'a>, int, int) => t<'a>

### sliceFrom

let sliceFrom: (t<'a>, int) => t<'a>

### head

let head: t<'a> => option<'a>

### tail

let tail: t<'a> => t<'a>

### stem

let stem: t<'a> => t<'a>

### last

let last: t<'a> => option<'a>

### take

let take: (t<'a>, int) => t<'a>

### zipAdjacent

let zipAdjacent: t<'a> => t<('a, 'a)>

### partition

let partition: (t<'a>, ('a, int) => bool) => (t<'a>, t<'a>)

### evenOdd

type evenOdd<'a> = {even: t<'a>, odd: t<'a>}

### partitionIndexEvenOdd

let partitionIndexEvenOdd: t<'a> => evenOdd<'a>
Use partition with your own predicate instead

### cross

let cross: (t<'a>, t<'b>) => t<('a, 'b)>

### splitAt

let splitAt: (t<'a>, int) => (t<'a>, t<'a>)

### intercalate

let intercalate: (t<'a>, 'a) => t<'a>

### intercalateWithGenerator

let intercalateWithGenerator: (t<'a>, int => 'a) => t<'a>

### concat

let concat: (t<'a>, t<'a>) => t<'a>

### append

let append: (t<'a>, 'a) => t<'a>

### prepend

let prepend: ('a, t<'a>) => t<'a>

### splice

let splice: (t<'a>, ~index: int, ~remove: int, t<'a>) => t<'a>

### replace

let replace: (t<'a>, 'a, int) => t<'a>

### insert

let insert: (t<'a>, 'a, int) => t<'a>

### remove

let remove: (t<'a>, int) => t<'a>

### combinations

let combinations: (t<'a>, ~begin: t<'a>=?, ~size: int) => t<t<'a>>

### generateCombinations

let generateCombinations: (t<'a>, ~begin: t<'a>=?, ~size: int) => t<t<'a>>
Use combinations instead
\n  * Sign a message with a key.\n  *\n  * @param message - A message to be signed\n  * @param key - The key with which to sign the message\n  * @returns A signed message\n
