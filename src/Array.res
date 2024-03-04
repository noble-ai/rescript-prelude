@@ocaml.doc("N+1 Array bindings.  Moderately opinionated to avoid some of the inspecific nature of primitive js functions, and make naming more explicit or consistent with other modules here.")
type t<'a> = array<'a>

// Consruction
@scope("Array") external fromIterable: Iterable.t<'t> => t<'t> = "from"
let return = (a: 'a): t<'a> => [a]

// Spread operator comes up as a fast copy similar to slice but i havnt checked.  -AxM
@ocaml.doc("Use spread operator to make a shallow copy of an array")
let clone: t<'a> => t<'a> = %raw("(x) => [...x]")

// TODO: return t<option<()>> to avoid keys - AxM
@ocaml.doc("[0..i) excludes i")
let range: int => t<int> = %raw(`(i) => [...Array(i).keys()]`)

@deprecated("Use range instead")
let rangeInclusive: int => t<int> = %raw(`(i) => [...Array(i + 1).keys()]`)
let rangeInclusive = (n: int) => {
  if n >= 0 {
    rangeInclusive(n)
  } else {
    []
  }
}

// Deconstruction
external toIterable: t<'t> => Iterable.t<'t> = "%identity"

// Investigation
@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/length)")
@get external length: t<'a> => int = "length"

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/includes)")
@send external includes: (t<'a>, 'a) => bool = "includes"

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)")
@send external forEach: (t<'a>, 'a => unit) => unit = "forEach"
@send external forEachi: (t<'a>, ('a, int) => unit) => unit = "forEach"

@ocaml.doc("pass an array to an effect, returning the original array")
let tap: (t<'a>, t<'a> => unit) => t<'a> = (a, fn) => {
  fn(a)
  a
}

@ocaml.doc("pass each element of an array to an effect, returning the original array")
let tapMap: (t<'a>, 'a => unit) => t<'a> = (a, fn) => {
  forEach(a, fn)
  a
}


let getUnsafe: (t<'a>, int) => 'a = %raw(`(x, i) => x[i]`)
let get: (t<'a>, int) => option<'a> = (arr, index) => {
  if index >= 0 && arr->length > index {
    arr->getUnsafe(index)->Some
  } else {
    None 
  }
}

let getExn = (x, i) => x->get(i)->Option.getExn(~desc="Array.getExn")

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf)")
@send external indexOf: (t<'a>, 'a) => int = "indexOf"

@ocaml.doc("indexOf uses strict equality for comparison which does not play well with rescripts more-but-not-clearly value based situations.[{a: 3}, {a: 4}].indexOf({a: 4}) == -1.")
@deprecated("Use findIndex instead: This has vague comparison semantics")
let indexOf = (arr, x) => {
  let v = arr->indexOf(x)
  v == -1 ? None : Some(v)
}
let y = () => indexOf(["a", "b", "c"], "b") // Some(1)

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)")
@send external findIndex: (t<'a>, 'a => bool) => int = "findIndex"

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)")
let findIndex = (arr, pred) => {
  switch findIndex(arr, pred) {
  | -1 => None
  | x => Some(x)
  }
}

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)")
@deprecated("Use findIndex instead")
let getIndexBy = findIndex

// Rename to all to match Promise, Result
@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every)")
@ocaml.doc("Renamed to match Promise, Result, Option")
@send external all: (t<'a>, 'a => bool) => bool = "every"

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every)")
@ocaml.doc("Renamed to match Promise, Result, Option")
@send external alli: (t<'a>, ('a, int) => bool) => bool = "every"

@deprecated("Use all instead: Renamed to match Promise, Result, etc")
let every = all

@deprecated("Use alli instead: : Renamed to match Promise, Result, etc")
let everyi = alli

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)")
@send external some: (t<'a>, 'a => bool) => bool = "some"

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)")
@send external somei: (t<'a>, ('a, int) => bool) => bool = "some"

let isEmpty = (arr: t<'a>) => arr->length == 0

///doc/ ## Mut
module Mut = {
  @ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort)")
  @send external sort: t<'a> => t<'a> = "sort"
  @ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse)")
  @send external reverse: t<'a> => t<'a> = "reverse"
  
  @ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice)")
  @send @variadic external splice: ( t<'a>, ~index: int, ~remove: int, array<'a>) => t<'a> = "splice"
  let splice_ = (arr, ~index, ~remove, items) => splice(arr, ~index, ~remove, items)->ignore

  @ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/push)")
  @send external push: (t<'a>, 'a) => int = "push"
  let push_ = (arr, x) => push(arr, x)->ignore

  @send @variadic external pushMany: (t<'a>, array<'a>) => int = "push"
  let pushMany_ = (arr, items) => pushMany(arr, items)->ignore

  let set: (t<'a>, int, 'a) => unit = %raw(`(arr, i, x) => { arr[i] = x }`)
}

// Transformation
// TODO: set needs to consider default values for new elements between current length and index - AxM
let setUnsafe = (arr, index, x) => clone(arr)->tap(Mut.set(_, index, x))
let set = (arr, index, x) => {
  if index < 0 || index > arr->length {
    arr
  } else {
    arr->setUnsafe(index, x)
  }
}

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)")
@send external map: (t<'a>, 'a => 'b) => t<'b> = "map"
@send external mapi: (t<'a>, ('a, int) => 'b) => t<'b> = "map"

@ocaml.doc("return a new array with each element replaced with `b`")
let const = (xs: t<'x>, b: 'b) => xs->map(_ => b)

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap)")
@ocaml.doc("Renamed to match Promise, Result, Option")
@send external bind: (t<'a>, 'a => t<'b>) => t<'b> = "flatMap"
@send external bindi: (t<'a>, ('a, int) => t<'b>) => t<'b> = "flatMap"

external identity: 'a => 'a = "%identity"

@ocaml.doc("Collapse an array of arrays by one degree")
let join = (arr: t<t<'a>>): t<'a> => bind(arr, identity)

@deprecated("use join instead")
@ocaml.doc("Renamed to match Promise, Result, Option")
let flatten = join

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter)")
@send external filter: (t<'a>, 'a => bool) => t<'a> = "filter"
@send external filteri: (t<'a>, ('a, int) => bool) => t<'a> = "filter"

let keepMap = (arr, fn) => {
  let v = []
  arr->forEach(x => {
    switch fn(x) {
    | Some(y) => v->Mut.push(y)->ignore
    | None => ()
    }
  })
  v
}

let catOptions: (t<option<'a>>) => t<'a> = keepMap(_, identity)

let keepBind = (a: t<option<'a>>, fn: 'a => option<'b>): t<'b> =>
  a->keepMap(Option.bind(_, fn))

@send external first: (t<'a>, 'a => bool) => option<'a> = "find"
@send external firsti: (t<'a>, ('a, int) => bool) => option<'a> = "find"
@deprecated("Use first instead")
let find = first
@deprecated("Use firsti instead")
let findi = firsti

let firstOption = (arr: t<'a>, fn: 'a => option<'b>): option<'b> => {
  arr->first(y => y->fn->Option.isSome)->Option.bind(fn)
}

let firstEq = (arr: t<'a>, x: 'a) => arr->find(y => y == x)
@depreacted("Use firstEq instead")
let findEq = firstEq

let firstBy = (arr: t<'a>, fn: 'a => 'b, b: 'b) => {
  arr->find(y => fn(y) == b)
}

@deprecated("Use firstBy instead")
let findBy = firstBy

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLast)")
@send external last: (t<'a>, 'a => bool) => option<'a> = "findLast"
@send external lasti: (t<'a>, ('a, int) => bool) => option<'a> = "findLast"
@deprecated("Use last instead")
let findLast = last
@deprecated("Use lasti instead")
let findLasti = lasti

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join)")
@ocaml.doc("Join is a common term for monads, and this function is fairly specific so give it the more specific name")
@send external joinWith: (t<string>, string) => string = "join"

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)")
@send external reduce: (t<'a>, ('b, 'a) => 'b, 'b) => 'b = "reduce"

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)")
@send external reducei: (t<'a>, ('b, 'a, int) => 'b, 'b) => 'b = "reduce"

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toReversed)")
@send external reverse: t<'a> => t<'a> = "toReversed"

let toIndices = mapi(_, (_, i) => i)

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toSorted)")
@send external sort: t<'a> => t<'a> = "toSorted"
@send external sortCmp: (t<'a>, ('a, 'a) => int) => t<'a> = "toSorted"

@ocaml.doc("[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice)")
@send external slice: (t<'a>, int, int) => t<'a> = "slice"
@send external sliceFrom: (t<'a>, int) => t<'a> = "slice"

@ocaml.doc("return first element")
let head = get(_, 0)
let tail = sliceFrom(_, 1)

@ocaml.doc("all but last element")
let stem = slice(_, 0, -1)
let last = (arr: t<'a>): option<'a> => arr->get(arr->length - 1)

let take = (arr: t<'a>, int): t<'a> => arr->slice(0, int)

let zipAdjacent = (arr: t<'a>): t<('a, 'a)> => {
  arr->tail->mapi((a, i) => (arr->getUnsafe(i), a))
}

let partition: (t<'a>, ('a, int) => bool) => (t<'a>, t<'a>) = (arr, pred) => {
  let t = []
  let f = []
  arr->forEachi((x, i) => pred(x, i) ? t->Mut.push(x)->ignore : f->Mut.push(x)->ignore)
  (t, f)
}

type evenOdd<'a> = {
  even: t<'a>,
  odd: t<'a>,
}

@deprecated("Use partition with your own predicate instead")
let partitionIndexEvenOdd = (arr: t<'a>): evenOdd<'a> => {
  // TODO: reduce instead? who cares Alex.
  let odd = arr->filteri((_, i) => (@doesNotRaise mod(i, 2)) == 0)
  let even = arr->filteri((_, i) => (@doesNotRaise mod(i, 2)) != 0)
  {even, odd}
}

// make each pair in a cross product of two arrays
let cross = (a, b) => {
  a->bind(a => b->map(b => (a, b)))
}

let splitAt = (arr: t<'a>, i: int) => {
  let a = arr->slice(0, i)
  let b = arr->slice(i, arr->length)
  (a, b)
}

let intercalate: (t<'a>, 'a) => t<'a> = (arr, i) => {
  let length: int = arr->length
  switch length {
  | l if l <= 1 => arr
  | _ => arr->bind(a => [a, i])->slice(0, length + (length - 1))
  }
}

let intercalateWithGenerator: (t<'a>, int => 'a) => t<'a> = (arr, gen) => {
  let length: int = arr->length
  switch length {
  | l if l <= 1 => arr
  | _ =>
    arr->bindi((a, idx) => [a, gen(idx)])->slice(0, length + (length - 1))
  }
}

@ocaml.doc("Use spread operator to combine two arrays")
let concat: (t<'a>, t<'a>) => t<'a> = %raw(`(a, b) => [...a, ...b]`)
@ocaml.doc("Use spread operator to append an element to an array")
let append: (t<'a>, 'a) => t<'a> = %raw(`(arr, a) => [...arr, a]`)
@ocaml.doc("Use spread operator to prepend an element to an array")
let prepend: ('a, t<'a>) => t<'a> = %raw(`(a, arr) => [a, ...arr]`)

// @send external splice: (t<'a>, int, int, t<'a>) => t<'a> = "toSpliced"
let splice: (t<'a>, ~index: int, ~remove: int, t<'a>) => t<'a> = (arr, ~index, ~remove, items) => {
  arr
  ->clone
  ->tap(Mut.splice_(_, ~index, ~remove, items))
} 

let replace = (arr: t<'a>, el: 'a, index: int): t<'a> => {
  if index < 0 || index > arr->length - 1 {
    arr
  } else {
    splice(arr, ~index, ~remove=1, [el])
  }
}

let insert = (arr: t<'a>, el: 'a, index: int): t<'a> => {
  // Allows insert at end of array, but avoids sparse array
  if index < 0 || index > (arr->length + 1) {
    arr
  } else {
    splice(arr, ~index, ~remove=0, [el])
  }
}

let remove = (arr: t<'a>, index: int): t<'a> => {
  if index < 0 || index > arr->length - 1 {
    arr
  } else {
    splice(arr, ~index, ~remove=1, [])
  }
}

// generate combinations of a fixed size
let rec combinations = (arr: t<'a>, ~begin=[], ~size: int) => {
  switch size {
  | 0 => [begin]
  | _ =>
    arr->bindi((v, i) => {
      let begin = begin->append(v)
      let length = arr->length
      let arr = arr->slice(i + 1, length + (length - 1))
      arr->combinations(~size=size - 1, ~begin)
    })
  }
}

@deprecated("Use combinations instead")
// FIXME: this is just here to exercise the docs framework - AxM
let generateCombinations = combinations
