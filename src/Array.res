type t<'a> = array<'a>

// Consruction
@scope("Array") external fromIterable: Iterable.t<'t> => t<'t> = "from"
let return = (a: 'a): t<'a> => [a]

// Spread operator comes up as a fast copy similar to slice but i havnt checked.  -AxM
let clone: t<'a> => t<'a> = %raw("(x) => [...x]")

// TODO: return t<option<()>> to avoid keys - AxM
let range: int => t<int> = %raw(`(i) => [...Array(i).keys()]`)

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
@get external length: t<'a> => int = "length"

@send external includes: (t<'a>, 'a) => bool = "includes"

@send external forEach: (t<'a>, 'a => unit) => unit = "forEach"
@send external forEachi: (t<'a>, ('a, int) => unit) => unit = "forEach"

let tap: (t<'a>, t<'a> => unit) => t<'a> = (a, fn) => {
  fn(a)
  a
}

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

@send external indexOf: (t<'a>, 'a) => int = "indexOf"

@deprecated("Use findIndex instead: This has vague comparison semantics")
let indexOf: (t<'a>, 'a) => option<int> = (arr, x) => {
  let v = arr->indexOf(x)
  v == -1 ? None : Some(v)
}

@send external findIndex: (t<'a>, 'a => bool) => int = "findIndex"

let findIndex: (t<'a>, 'a => bool) => option<int> = (arr, pred) => {
  switch findIndex(arr, pred) {
  | -1 => None
  | x => Some(x)
  }
}

@deprecated("Use findIndex instead")
let getIndexBy = findIndex

// Rename to all to match Promise, Result
@send external all: (t<'a>, 'a => bool) => bool = "every"

@send external alli: (t<'a>, ('a, int) => bool) => bool = "every"

let every = all

let everyi = alli

@send external some: (t<'a>, 'a => bool) => bool = "some"

@send external somei: (t<'a>, ('a, int) => bool) => bool = "some"

let isEmpty = (arr: t<'a>) => arr->length == 0

module Mut = {
  @send external sort: t<'a> => t<'a> = "sort"
  @send external reverse: t<'a> => t<'a> = "reverse"
  
  @send @variadic external splice: ( t<'a>, ~index: int, ~remove: int, array<'a>) => t<'a> = "splice"
  let splice_ = (arr, ~index, ~remove, items) => splice(arr, ~index, ~remove, items)->ignore

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

let setExn = (arr, index, x) => {
  if index < 0 || index > arr->length {
    Exn.raise("IndexOutOfBounds")
  } else {
    arr->setUnsafe(index, x)
  }
}

@send external map: (t<'a>, 'a => 'b) => t<'b> = "map"
@send external mapi: (t<'a>, ('a, int) => 'b) => t<'b> = "map"

let const = (xs: t<'x>, b: 'b) => xs->map(_ => b)

@send external bind: (t<'a>, 'a => t<'b>) => t<'b> = "flatMap"
@send external bindi: (t<'a>, ('a, int) => t<'b>) => t<'b> = "flatMap"

external identity: 'a => 'a = "%identity"

let join = (arr: t<t<'a>>): t<'a> => bind(arr, identity)

let flatten = join

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

let keepMapi = (arr, fn) => {
  let v = []
  arr->forEachi((x, i) => {
    switch fn(x, i) {
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
let find = first
let findi = firsti

let firstOption = (arr: t<'a>, fn: 'a => option<'b>): option<'b> => {
  arr->first(y => y->fn->Option.isSome)->Option.bind(fn)
}

let firstEq = (arr: t<'a>, x: 'a) => arr->find(y => y == x)
let findEq = firstEq

let firstBy = (arr: t<'a>, fn: 'a => 'b, b: 'b) => {
  arr->find(y => fn(y) == b)
}

let findBy = firstBy

@send external last: (t<'a>, 'a => bool) => option<'a> = "findLast"
@send external lasti: (t<'a>, ('a, int) => bool) => option<'a> = "findLast"
let findLast = last
let findLasti = lasti

@send external joinWith: (t<string>, string) => string = "join"

@send external reduce: (t<'a>, ('b, 'a) => 'b, 'b) => 'b = "reduce"

@send external reducei: (t<'a>, ('b, 'a, int) => 'b, 'b) => 'b = "reduce"

@send external reverse: t<'a> => t<'a> = "toReversed"

let toIndices = mapi(_, (_, i) => i)

@send external sort: t<'a> => t<'a> = "toSorted"
@send external sortCmp: (t<'a>, ('a, 'a) => int) => t<'a> = "toSorted"

@send external slice: (t<'a>, int, int) => t<'a> = "slice"
@send external sliceFrom: (t<'a>, int) => t<'a> = "slice"

let head = get(_, 0)
let tail = sliceFrom(_, 1)

let stem = slice(_, 0, -1)
let leaf = (arr: t<'a>): option<'a> => arr->get(arr->length - 1)

let take = (arr: t<'a>, int): t<'a> => arr->slice(0, int)

let zipAdjacent = (arr: t<'a>): t<('a, 'a)> => arr->tail->mapi((a, i) => (arr->getUnsafe(i), a))

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

let partitionIndexEvenOdd = (arr: t<'a>): evenOdd<'a> => {
  // TODO: reduce instead? who cares Alex.
  let odd = arr->filteri((_, i) => (@doesNotRaise mod(i, 2)) == 0)
  let even = arr->filteri((_, i) => (@doesNotRaise mod(i, 2)) != 0)
  {even, odd}
}

let cross = (a, b) => a->bind(a => b->map(b => (a, b)))

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

let concat: (t<'a>, t<'a>) => t<'a> = %raw(`(a, b) => [...a, ...b]`)
let append: (t<'a>, 'a) => t<'a> = %raw(`(arr, a) => [...arr, a]`)
let prepend: ('a, t<'a>) => t<'a> = %raw(`(a, arr) => [a, ...arr]`)

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

let generateCombinations = combinations

external identity: 'a => 'a = "%identity"

let traverseOption = (arr: t<'a>, fn: 'a => option<'b>): option<t<'b>> => {
  let v = []
  let all = ref(true)
  arr->forEach(x => {
    switch fn(x) {
    | Some(y) => if all.contents { v->Mut.push(y)->ignore } else { () }
    | None => { all.contents = false } 
    }
  })
    
  if all.contents {
    Some(v)
  } else {
    None
  }
}

let sequenceOption = (arr: t<option<'a>>): option<t<'a>> => 
  traverseOption(arr, identity)

let traverseTuple = (arr: t<'a>, fn: 'a => ('b, 'c)): (t<'b>, t<'c>) => {
  let a = []
  let b = []
  arr->forEach(x => {
    let (x, y) = fn(x)
    a->Mut.push(x)->ignore
    b->Mut.push(y)->ignore
  })

  (a, b)
}

let sequenceTuple = (arr: t<('a, 'b)>): (t<'a>, t<'b>) => 
  traverseTuple(arr, identity)