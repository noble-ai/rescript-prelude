///doc/ # Option

include Belt.Option

@deprecated("please use map->getWithDefault for ease of refactoring")
let mapWithDefault = mapWithDefault

type t<'a> = option<'a>

external void: option<'a> => unit = "%identity"

let getExn = (a, ~desc="undefined getExn") =>
  switch a {
  | Some(x) => x
  | None => Exn.raise(desc)
  }

let return = a => Some(a)

let bind = (a: option<'a>, fn: 'a => option<'b>): option<'b> => a->flatMap(fn)
let join = (a: option<option<'a>>): option<'a> => a->bind(x => x)

let const = (o, a) => o->map(_ => a)

let some = (a: 'a): option<'a> => Some(a)
let none = (_o: option<'a>) => None

let apply = (f: option<'a => 'b>, x: option<'a>): option<'b> => {
  switch (f, x) {
  | (Some(f), Some(x)) => Some(f(x))
  | _ => None
  }
}

// Turn a function on concrete values into an optional function. "A" for Applicative
let liftA1 = (f: 'a => 'r): (option<'a> => option<'r>) => {
  a => {
    switch a {
    | Some(a) => Some(f(a))
    | None => None
    }
  }
}

let liftA2 = (f: ('a, 'b) => 'r): ((option<'a>, option<'b>) => option<'r>) => {
  (a, b) => {
    switch (a, b) {
    | (Some(a), Some(b)) => Some(f(a, b))
    | _ => None
    }
  }
}

let liftA3 = (f: ('a, 'b, 'c) => 'd): ((option<'a>, option<'b>, option<'c>) => option<'d>) =>  {
  (a, b, c) => switch (a, b, c) {
  | (Some(a), Some(b), Some(c)) => Some(f(a,b,c))
  | _ => None
  }
}

let applyFirst: option<'a> => option<'b> => option<'a> = (f, x) =>
  switch (f, x) {
  | (Some(f), Some(_)) => Some(f)
  | _ => None
  }


let applySecond: option<'a> => option<'b> => option<'b> = (f, x) =>
  switch (f, x) {
  | (Some(_), Some(x)) => Some(x)
  | _ => None
  }

let all2 = (a: option<'a>, b: option<'b>): option<('a, 'b)> => {
  switch (a, b) {
  | (Some(a), Some(b)) => Some((a, b))
  | _ => None
  }
}

let all3 = (a: option<'a>, b: option<'b>, c: option<'c>): option<('a, 'b, 'c)> => {
  switch (a, b, c) {
  | (Some(a), Some(b), Some(c)) => Some((a, b, c))
  | _ => None
  }
}

let all4 = (a: option<'a>, b: option<'b>, c: option<'c>, d: option<'d>): option<('a, 'b, 'c, 'd)> => {
  switch (a, b, c, d) {
  | (Some(a), Some(b), Some(c), Some(d)) => Some((a, b, c, d))
  | _ => None
  }
}

let all5 = (a: option<'a>, b: option<'b>, c: option<'c>, d: option<'d>, e: option<'e>): option<('a, 'b, 'c, 'd, 'e)> => {
  switch (a, b, c, d, e) {
  | (Some(a), Some(b), Some(c), Some(d), Some(e)) => Some((a, b, c, d, e))
  | _ => None
  }
}

let all6 = (a: option<'a>, b: option<'b>, c: option<'c>, d: option<'d>, e: option<'e>, f: option<'f>): option<('a, 'b, 'c, 'd, 'e, 'f)> => {
  switch (a, b, c, d, e, f) {
  | (Some(a), Some(b), Some(c), Some(d), Some(e), Some(f)) => Some((a, b, c, d, e, f))
  | _ => None
  }
}

let all = (arr: array<option<'a>>): option<array<'a>> => {
  Js.Array2.reduce(
    arr,
    (b, opt) => {
      switch all2(b, opt) {
      | Some(b, opt) => Some(Js.Array2.concat(b, [opt]))
      | _ => None
      }
    },
    Some([])
  )
}

let distribute2 = (t: option<('a, 'b)>): (option<'a>, option<'b>) => {
  switch t {
  | Some((a, b)) => (Some(a), Some(b))
  | None => (None, None)
  }
}

let distribute3 = (t: option<('a, 'b, 'c)>): (option<'a>, option<'b>, option<'c>) => {
  switch t {
  | Some((a, b, c)) => (Some(a), Some(b), Some(c))
  | None => (None, None, None)
  }
}

let tap = (a: option<'a>, fn: 'a => unit): option<'a> => {
  a->forEach(fn)
  a
}

let tapNone = (a: option<'a>, fn: unit => unit): option<'a> => {
  switch a {
  | None => fn()
  | _ => ()
  }
  a
}

let invert = (a: option<'a>, b: 'b): option<'b> => {
  switch a {
  | Some(_) => None
  | None => Some(b)
  }
}

// Keep the value v if true, otherwise return None
let predicate = (v: 'v, b: 'v => bool): option<'v> => {
  if b(v) {
    Some(v)
  } else {
    None
  }
}

// force the option to None when the predicate returns false
let guard = (a: option<'a>, p: 'a => bool): option<'a> => {
  switch a->map(p) {
  | Some(true) => a
  | _ => None
  }
}

let flap0 = (f: option<() => 'b>): option<'b> => f->map(f => f())
let flap0_ = (f: option<() => 'b>): () => f->flap0->void

let flap1 = (f: option<'a => 'b>, v: 'a): option<'b> => f->map(f => f(v))
let flap1_ = (f: option<'a => 'b>, v: 'a): () => flap1(f,v)->void
let flap2 = (f: option<('a, 'b) => 'c>, a: 'a, b: 'b): option<'c> => f->map(f => f(a, b))
let flap2_ = (f: option<('a, 'b) => 'c>, a: 'a, b: 'b): () => flap2(f,a,b)->void

let flap3 = (f: option<('a, 'b, 'c) => 'd>, a: 'a, b: 'b, c: 'c): option<'d> => f->map(f => f(a, b, c))
let flap3_ = (f: option<('a, 'b, 'c) => 'd>, a: 'a, b: 'b, c: 'c): () => flap3(f,a,b,c)->void

// For use in Array2.reduce, take the first Some option.
let first = (acc: option<'a>, a: option<'a>) =>
  switch (acc, a) {
  | (acc, _) if acc->isSome => acc
  | (_, b) => b
  }

external returnArray: array<'a> => array<option<'a>> = "%identity"

let log = (d, s) => d->tap(Js.Console.log2(s))