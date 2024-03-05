type t<'a> = Js.Promise.t<'a>
type error = Js.Promise.error
external void: t<'a> => unit = "%identity"

let make = Js.Promise2.make
let return: 'v => t<'v> = %raw(`(val) => Promise.resolve(val)`)
let reject: 'reason => t<'val> = %raw(`(val) => Promise.reject(val)`) 

let map: (t<'a>, 'a => 'b) => t<'b> = %raw(`(p, fn) => p.then(fn)`)

let const: (t<'x>, 'b) => t<'b> = (p, a) => p->map(_ => a)

let bind: (t<'a>, 'a => t<'b>) => t<'b> = %raw(`(p, fn) => p.then(fn)`)

let join = (a: t<t<'a>>): t<'a> => a->bind(x => x)

let tap = (p: t<'a>, fn: 'a => unit): t<'a> => {
  p->bind(a => {
    fn(a)
    return(a)
  })
}

let tapBind = (p: t<'a>, fn: 'a => t<'b>): t<'a> => {
  p->bind( a =>
    fn(a)->const(a)
  )
}

@scope("Promise") @val external all2: ((t<'a>, t<'b>)) => t<('a, 'b)> = "all"
@scope("Promise") @val external all3: ((t<'a>, t<'b>, t<'c>)) => t<('a, 'b, 'c)> = "all"
@scope("Promise") @val external all4: ((t<'a>, t<'b>, t<'c>, t<'d>)) => t<('a, 'b, 'c, 'd)> = "all"
@scope("Promise") @val external all5: ((t<'a>, t<'b>, t<'c>, t<'d>, t<'e>)) => t<('a, 'b, 'c, 'd, 'e)> = "all"

@send external catch: (t<'a>, 'error => t<'b>) => t<'b> = "catch"
let tapCatch = (p: t<'a>, fn: 'error => unit): t<'a> => {
  p->catch(err => {
    fn(err)
    reject(err)
  })
}

@send external finally: (t<'a>, () => unit) => t<'a> = "finally"

let finally_ = (a, b) => a ->tap(b)->void 
let finallyVoid = finally_

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
