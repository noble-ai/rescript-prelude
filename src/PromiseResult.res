type result<'ok, 'err> = Belt.Result.t<'ok, 'err>
type t<'ok, 'err> = Js.Promise.t<result<'ok, 'err>>

let map = (p: t<'o, 'e>, fn: 'o => 'or) => {
  p->Promise.map(res => {
    switch res {
    | Ok(o) => Ok(fn(o))
    | Error(e) => Error(e)
    }
  })
}

let bind = (p: t<'o, 'e>, fn: 'o => t<'or, 'e>) => {
  p->Promise.bind(res => {
    switch res {
    | Ok(o) => fn(o)
    | Error(e) => Js.Promise.resolve(Error(e))
    }
  })
}

let tap = (p: t<'o, 'e>, fn: 'o => unit) => {
  p->Promise.tap( r => 
  switch r {
    | Ok(o) => fn(o)
    | _ => ()
  }
  )
}

let tapBind = (p: t<'o, 'e>, fn: 'o => t<'a, 'b>) => {
  p->Promise.tapBind( r => 
  switch r {
    | Ok(o) => fn(o)->Promise.const(r)
    | _ =>  Js.Promise.resolve(r)
    }
  )
}



// Take a promise and lift it to PromiseResult
// exceptions are not caught here because we dont know if the 
// caller wants their catches caught or not.
let lift = (p: Js.Promise.t<'a>): t<'a, 'err> => {
  p->Promise.map(Result.return)
  // ->Promise.catch(err =>
  //   Js.Promise.resolve(
  //     Error(
  //       err
  //       ->Promise.errorToExn
  //       ->Js.Exn.message
  //       ->Option.getWithDefault("A Promise lifted to PromiseResult failed with no message"),
  //     ),
  //   )
  // )
}
