type t<'a> = Js.Promise.t<'a>
type error = Js.Promise.error
external void: t<'a> => unit = "%identity"

let make = Js.Promise2.make
let return: 'v => t<'v> = %raw(`(val) => Promise.resolve(val)`)
let reject: 'reason => t<'val> = %raw(`(val) => Promise.reject(val)`) 

let map: (t<'a>, 'a => 'b) => t<'b> = %raw(`(p, fn) => p.then(fn)`)

// Take a promise and replace its yielded value with a constant
// We use this for casting to unit mostly, but it's useful for other things too
let const: (t<'x>, 'b) => t<'b> = (p, a) => p->map(_ => a)

let bind: (t<'a>, 'a => t<'b>) => t<'b> = %raw(`(p, fn) => p.then(fn)`)

let join = (a: t<t<'a>>): t<'a> => a->bind(x => x)

// Call fn with the value from the promise, ignoring its return
let tap = (p: t<'a>, fn: 'a => unit): t<'a> => {
  p->bind(a => {
    fn(a)
    return(a)
  })
}

// Call fn with the value from the promise, ignoring its return. but only continue when fn resolves
let tapBind = (p: t<'a>, fn: 'a => t<'b>): t<'a> => {
  p->bind( a =>
    fn(a)->const(a)
  )
}

@val external all2: ((t<'a>, t<'b>)) => t<('a, 'b)> = "Promise.all"
@val external all3: ((t<'a>, t<'b>, t<'c>)) => t<('a, 'b, 'c)> = "Promise.all"
@val external all4: ((t<'a>, t<'b>, t<'c>, t<'d>)) => t<('a, 'b, 'c, 'd)> = "Promise.all"
@val external all5: ((t<'a>, t<'b>, t<'c>, t<'d>, t<'e>)) => t<('a, 'b, 'c, 'd, 'e)> = "Promise.all"

@send external catch: (t<'a>, 'error => t<'b>) => t<'b> = "catch"

@send external finally: (t<'a>, () => unit) => t<'a> = "finally"

let finallyVoid = (a, b) => a ->tap(b) ->void 

// Take an array of input, and a function that makes a promise producing b from one a.
// Start with a Promise that produces an empty array.
// Walk along the array of inputs, with the accumulator being a promise that produces the array of earlier inputs.
// bind off of that promise with a function that produces your Promise<b>, then map that Promise to append it on the existing array of bs - AxM
let sequence = (ins: array<'a>, fn: 'a => t<'b>): t<array<'b>> => {
  ins->Array.reduce(
    (p, a) => p->bind(bs => fn(a)->map(b => Array.concat(bs, [b]))),
    return([])
  )
}

external errorToExn: Js.Promise.error => exn = "%identity"

// TODO: use {..}
external errorToJsObj: Js.Promise.error => 'a = "%identity"

let toResult = (p: t<'a>) => {
  p
  ->bind(a => return(Ok(a)))
  ->catch(err => {
    let error = errorToJsObj(err)
    let message: string = error["message"]
    return(Error(message))
  })
}

let sleep = time => {
  Js.Promise.make((~resolve, ~reject as _reject) => {
    Timeout.set(() => resolve(. "ding"), time)->Void.void
  })
}

let delay = (~ms, p) => {
  sleep(ms)
  ->Tuple.Tuple2.make(p)
  ->all2
  ->map(Tuple.snd2)
}
