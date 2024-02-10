// Reexport
let get = Belt.Array.get
let getUnsafe: (. array<'a>, int)  => 'a = %raw(`function(arr, index) { return arr[index]; }`)
let getExn = Belt.Array.getExn
let getBy = Belt.Array.getBy

let clone: array<'a> => array<'a> = %raw("(x) => [...x]")
let length = Js.Array2.length
let includes = Js.Array2.includes
let indexOf = Js.Array2.indexOf
let find = Js.Array2.find

// Immutable version. prefer immutable in this file. use raw for mutable tricks for now. -AxM
let unsafeSet = (arr, index, x) => {
  let arr = clone(arr)
  Js.Array2.unsafe_set(arr, index, x)
  arr
}

let map = Js.Array2.map
let mapi = Js.Array2.mapi

let forEach = Js.Array2.forEach
let forEachi = Js.Array2.forEachi

let filter = Js.Array2.filter
let keepMap = (arr: array<'a>, fn: 'a => option<'b>): array<'b> => {
  let out: array<'b> = []
  for x in 0 to arr->Js.Array2.length {
    switch fn(arr->getUnsafe(. _, x)) {
    | Some(y) => out->Js.Array2.push(y)->ignore
    | None => ()
    }
  }
  out 
}

let keepMapi = (arr: array<'a>, fn: ('a, int) => option<'b>): array<'b> => {
  let out: array<'b> = []
  for x in 0 to arr->Js.Array2.length {
    switch fn(arr->getUnsafe(. _, x), x) {
    | Some(y) => out->Js.Array2.push(y)->ignore
    | None => ()
    }
  }
  out 
}

let partition = Belt.Array.partition

@send external bind: (Js.Array.t<'a>, 'a => Js.Array.t<'b>) => Js.Array.t<'b> = "flatMap"
@send
external bindWithIndex: (Js.Array.t<'a>, ('a, int) => Js.Array.t<'b>) => Js.Array.t<'b> = "flatMap"

external identity: 'a => 'a = "%identity"

// [0..i) excludes i
let range: int => array<int> = %raw(`(i) => [...Array(i).keys()]`)
// FIXME: not inclusive, 1 indexed
let rangeInclusive: int => array<int> = %raw(`(i) => [...Array(i + 1).keys()]`)

let flatten = (arr: array<array<'a>>): array<'a> => bind(arr, identity)
let join = flatten
let joinWith = Js.Array2.joinWith

let return = (a: 'a): array<'a> => [a]

let const = (xs: array<'x>, b: 'b) => xs->Js.Array2.map(_ => b)

let toIndices = Js.Array2.mapi(_, (_, i) => i)

// consistent naming with Promise etc.
let all = Js.Array2.every
let alli = Js.Array2.everyi
let some = Js.Array2.some
let somei = Js.Array2.somei

let tail = (arr: array<'a>): array<'a> => arr->Js.Array2.sliceFrom(1)
let stem = (arr: array<'a>): array<'a> => arr->Js.Array2.slice(~start=0, ~end_=-1)
let last = (arr: array<'a>): option<'a> => arr->get(arr->Js.Array2.length - 1)
let take = (arr: array<'a>, int): array<'a> => arr->Js.Array2.slice(~start=0, ~end_=int)

let zipAdjacent = (arr: array<'a>): array<('a, 'a)> => {
  arr->tail->Js.Array2.mapi((a, i) => (arr->Belt.Array.getUnsafe(i), a))
}

let findEq = (arr: array<'a>, x: 'a) => {
  arr->Js.Array2.find(y => y == x)
}

let findBy = (arr: array<'a>, fn: 'a => 'b, b: 'b) => {
  arr->Js.Array2.find(y => fn(y) == b)
}

let first = (arr: array<'a>, fn: 'a => option<'b>): option<'b> => {
  arr->Js.Array2.find(y => y->fn->Option.isSome)->Option.bind(fn)
}

let reverse = (arr: array<'a>): array<'a> => arr->Js.Array2.copy->Js.Array2.reverseInPlace

type evenOdd<'a> = {
  even: array<'a>,
  odd: array<'a>,
}

let partitionIndexEvenOdd = (arr: array<'a>) => {
  // TODO: reduce instead? who cares Alex.
  let odd = arr->Js.Array2.filteri((_, i) => @doesNotRaise mod(i, 2) == 0)
  let even = arr->Js.Array2.filteri((_, i) => @doesNotRaise mod(i, 2) != 0)
  {even: even, odd: odd}
}

// make each pair in a cross product of two arrays
let cross = (a, b) => {
  a->bind(a => b->Js.Array2.map(b => (a, b)))
}

let splitAt = (arr: array<'a>, i: int) => {
  let a = arr->Js.Array2.slice(~start=0, ~end_=i)
  let b = arr->Js.Array2.slice(~start=i, ~end_={arr->Js.Array2.length})
  (a, b)
}

external identity: 'a => 'a = "%identity"

let catOptions = (arr: array<option<'a>>): array<'a> => {
  arr->Belt.Array.keepMap(identity)
}

let keepBind = (a: array<option<'a>>, fn: 'a => option<'b>): array<'b> =>
  a->Js.Array2.map(a => a->Option.bind(fn))->catOptions

let intercalate: (array<'a>, 'a) => array<'a> = (arr, i) => {
  let length: int = arr->Js.Array2.length
  switch length {
  | l if l <= 1 => arr
  | _ => arr->bind(a => [a, i])->Js.Array2.slice(~start=0, ~end_=length + (length - 1))
  }
}

let intercalateWithGenerator: (array<'a>, int => 'a) => array<'a> = (arr, gen) => {
  let length: int = arr->Js.Array2.length
  switch length {
  | l if l <= 1 => arr
  | _ =>
    arr
    ->bindWithIndex((a, idx) => [a, gen(idx)])
    ->Js.Array2.slice(~start=0, ~end_=length + (length - 1))
  }
}

let tap: (array<'a>, array<'a> => unit) => array<'a> = (a, fn) => {
  fn(a)
  a
}

let tapMap: (array<'a>, 'a => unit) => array<'a> = (a, fn) => {
  Js.Array2.forEach(a, fn)
  a
}

// TODO: set needs to consider default values for new elements between current length and index - AxM
// let set = (arr: array<'a>, el: 'a, index: int): array<'a> => {
//   let begin = arr->Js.Array2.slice(~start=0, ~end_=index)
//   let end = arr->Js.Array2.sliceFrom(index + 1)
//   Belt.Array.concatMany([begin, [el], end])
// }

let reduce = Js.Array2.reduce
let concat = Js.Array2.concat
let append = (acc: array<'a>, a: 'a) => Js.Array2.concat(acc, [a])
let isEmpty = (arr: array<'a>) => arr->Js.Array2.length == 0

let replace = (arr: array<'a>, el: 'a, index: int): array<'a> => {
  switch index {
  | i if i < 0 => arr
  | i if i >= arr->Js.Array2.length => arr
  | _ => {
      let begin = arr->Js.Array2.slice(~start=0, ~end_=index)
      let end = arr->Js.Array2.sliceFrom(index + 1)
      Js.Array2.concatMany(begin, [[el], end])
    }
  }
}

let insert = (arr: array<'a>, el: 'a, index: int): array<'a> => {
  switch (arr, index) {
  | ([], 0) => [el]
  | (_, index) if index < 0 => arr
  | (_, index) if index >= arr->Js.Array2.length => arr
  | (arr, index) => {
      let begin = arr->Js.Array2.slice(~start=0, ~end_=index)
      let end = arr->Js.Array2.sliceFrom(index)
      Js.Array2.concatMany(begin, [[el], end])
    }
  }
}

let remove = (arr: array<'a>, index: int): array<'a> => {
  switch (arr, index) {
  | ([], 0) => []
  | (_, index) if index < 0 => arr
  | (_, index) if index >= arr->Js.Array2.length => arr
  | (arr, index) => {
      let begin = arr->Js.Array2.slice(~start=0, ~end_=index)
      let end = arr->Js.Array2.sliceFrom(index + 1)
      Js.Array2.concat(begin, end)
    }
  }
}
