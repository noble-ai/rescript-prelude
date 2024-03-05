@@ocaml.doc("
  ## N+1 Array bindings.  
  Moderately opinionated to avoid some of the inspecific nature of primitive js functions, and make naming more explicit or consistent with other modules here. 
  Works to avoid sparse arrays for type safety. 
")
type t<'a> = array<'a>

// Consruction
@scope("Array") external fromIterable: Iterable.t<'t> => t<'t> = "from"
let return: ('a) => t<'a> 

// Spread operator comes up as a fast copy similar to slice but i havnt checked.  -AxM
@ocaml.doc("Use spread operator to make a shallow copy of an array")
let clone: t<'a> => t<'a>

// TODO: return t<option<()>> to avoid keys - AxM
@ocaml.doc("[0..i) excludes i")
let range: int => t<int> 

@deprecated("Use range instead")
let rangeInclusive: int => t<int>

// Iteration 
let toIterable: t<'t> => Iterable.t<'t>

// Investigation
@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/length)")
let length: t<'a> => int

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/includes)")
let includes: (t<'a>, 'a) => bool 

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)")
let forEach: (t<'a>, 'a => unit) => unit
let forEachi: (t<'a>, ('a, int) => unit) => unit

@ocaml.doc("pass an array to an effect, returning the original array")
let tap: (t<'a>, t<'a> => unit) => t<'a>

@ocaml.doc("pass each element of an array to an effect, returning the original array")
let tapMap: (t<'a>, 'a => unit) => t<'a>

let getUnsafe: (t<'a>, int) => 'a
let get: (t<'a>, int) => option<'a>

let getExn: (t<'a>, int) => 'a 

@ocaml.doc("indexOf uses strict equality for comparison which does not play well with rescripts more-but-not-clearly value based situations.[{a: 3}, {a: 4}].indexOf({a: 4}) == -1.")
@deprecated("Use findIndex instead: This has vague comparison semantics")
let indexOf: (t<'a>, 'a) => option<int>

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)")
@ocaml.doc("returns object instead of magic integer")
let findIndex: (t<'a>, 'a => bool) => option<int>

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)")
@deprecated("Use findIndex instead")
let getIndexBy: (t<'a>, 'a => bool) => option<int>

// Rename to all to match Promise, Result
@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every)")
@ocaml.doc("Renamed to match Promise, Result, Option")
let all: (t<'a>, 'a => bool) => bool

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every)")
@ocaml.doc("Renamed to match Promise, Result, Option")
let alli: (t<'a>, ('a, int) => bool) => bool

@deprecated("Use all instead: Renamed to match Promise, Result, etc")
let every: (t<'a>, 'a => bool) => bool

@deprecated("Use alli instead: : Renamed to match Promise, Result, etc")
let everyi: (t<'a>, ('a, int) => bool) => bool

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)")
let some: (t<'a>, 'a => bool) => bool

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)")
let somei: (t<'a>, ('a, int) => bool) => bool

let isEmpty:  t<'a> => bool

@ocaml.doc("Mutating functions on Array.t")
module Mut: {
  @ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort)")
  let sort: t<'a> => t<'a>
  @ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse)")
  let reverse: t<'a> => t<'a>
  
  @ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice)")
  let splice: ( t<'a>, ~index: int, ~remove: int, array<'a>) => t<'a>
  let splice_: ( t<'a>, ~index: int, ~remove: int, array<'a>) => unit

  @ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/push)")
  let push: (t<'a>, 'a) => int
  let push_: (t<'a>, 'a) => unit

  let pushMany: (t<'a>, array<'a>) => int
  let pushMany_: (t<'a>, array<'a>) => unit

  let set: (t<'a>, int, 'a) => unit
}

// Transformation
// TODO: set needs to consider default values for new elements between current length and index - AxM
let setUnsafe: (t<'a>, int, 'a) => t<'a>
let set: (t<'a>, int, 'a) => t<'a>
let setExn: (t<'a>, int, 'a) => t<'a>

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)")
let map: (t<'a>, 'a => 'b) => t<'b>
let mapi: (t<'a>, ('a, int) => 'b) => t<'b>

@ocaml.doc("return a new array with each element replaced with `b`")
@ocaml.doc("maintains length")
let const : (t<'x>, 'b) => t<'b>

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap)")
@ocaml.doc("Renamed to match Promise, Result, Option")
let bind: (t<'a>, 'a => t<'b>) => t<'b>
let bindi: (t<'a>, ('a, int) => t<'b>) => t<'b>

@ocaml.doc("Collapse an array of arrays by one degree")
let join : (t<t<'a>>) => t<'a>

@deprecated("use join instead")
@ocaml.doc("Renamed to match Promise, Result, Option")
let flatten : (t<t<'a>>) => t<'a>

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter)")
let filter: (t<'a>, 'a => bool) => t<'a>
let filteri: (t<'a>, ('a, int) => bool) => t<'a>

let keepMap: (t<'a>, 'a => option<'b>) => t<'b>

let catOptions: (t<option<'a>>) => t<'a>

let keepBind : (t<option<'a>>, 'a => option<'b>) => t<'b>

let first: (t<'a>, 'a => bool) => option<'a>
let firsti: (t<'a>, ('a, int) => bool) => option<'a>
let firstOption: (t<'a>, 'a => option<'b>) => option<'b>

@deprecated("Use first instead")
let find: (t<'a>, 'a => bool) => option<'a>

@deprecated("Use firsti instead")
let findi: (t<'a>, ('a, int) => bool) => option<'a>

@depreacted("Use first instead")
let firstEq: (t<'a>, 'a) => option<'a>

@depreacted("Use first instead")
let findEq: (t<'a>, 'a) => option<'a>

@depreacted("Use first instead")
let firstBy: (t<'a>, 'a => 'b, 'b) => option<'a>

@deprecated("Use first instead")
let findBy: (t<'a>, 'a => 'b, 'b) => option<'a>

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLast)")
let last: (t<'a>, 'a => bool) => option<'a>
let lasti: (t<'a>, ('a, int) => bool) => option<'a>

@deprecated("Use last instead")
let findLast: (t<'a>, 'a => bool) => option<'a>

@deprecated("Use lasti instead")
let findLasti: (t<'a>, ('a, int) => bool) => option<'a>

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join)")
@ocaml.doc("Join is a common term for monads, and this function is fairly specific so give it the more specific name")
let joinWith: (t<string>, string) => string

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)")
let reduce: (t<'a>, ('b, 'a) => 'b, 'b) => 'b

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)")
let reducei: (t<'a>, ('b, 'a, int) => 'b, 'b) => 'b

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toReversed)")
let reverse: t<'a> => t<'a>

let toIndices: t<'a> => t<int>

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toSorted)")
let sort: t<'a> => t<'a>
let sortCmp: (t<'a>, ('a, 'a) => int) => t<'a>

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice)")
let slice: (t<'a>, int, int) => t<'a>
let sliceFrom: (t<'a>, int) => t<'a> 

@ocaml.doc("return first element")
let head: t<'a> => option<'a>
let tail: t<'a> => t<'a>

@ocaml.doc("all but last element")
let stem: t<'a> => t<'a> 
let leaf: (t<'a>) => option<'a>

let take:  (t<'a>, int) => t<'a>

let zipAdjacent: (t<'a>) => t<('a, 'a)>

let partition: (t<'a>, ('a, int) => bool) => (t<'a>, t<'a>)

type evenOdd<'a> = {
  even: t<'a>,
  odd: t<'a>,
}

@deprecated("Use partition with your own predicate instead")
let partitionIndexEvenOdd : (t<'a>) => evenOdd<'a>

// make each pair in a cross product of two arrays
let cross: (t<'a>, t<'b>) => t<('a, 'b)>

let splitAt: (t<'a>, int) => (t<'a>, t<'a>)

let intercalate: (t<'a>, 'a) => t<'a>

let intercalateWithGenerator: (t<'a>, int => 'a) => t<'a>

@ocaml.doc("Use spread operator to combine two arrays")
let concat: (t<'a>, t<'a>) => t<'a>

@ocaml.doc("Use spread operator to append an element to an array")
let append: (t<'a>, 'a) => t<'a>

@ocaml.doc("Use spread operator to prepend an element to an array")
let prepend: ('a, t<'a>) => t<'a>

// let splice: (t<'a>, int, int, t<'a>) => t<'a> = "toSpliced"
let splice: (t<'a>, ~index: int, ~remove: int, t<'a>) => t<'a>

let replace: (t<'a>, 'a, int) => t<'a>

let insert : (t<'a>, 'a, int) => t<'a>

let remove : (t<'a>, int) => t<'a>

// generate combinations of a fixed size
let combinations: (t<'a>, ~begin: t<'a>=?, ~size: int) => t<t<'a>>

@deprecated("Use combinations instead")
let generateCombinations: (t<'a>, ~begin: t<'a>=?, ~size: int) => t<t<'a>>
