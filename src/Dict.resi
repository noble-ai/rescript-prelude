type t<'a> = Js.Dict.t<'a>
let empty: unit => Js.Dict.t<'a>
let set: (t<'a>, Js.Dict.key, 'a) => t<'a>
let get: (Js.Dict.t<'a>, Js.Dict.key) => option<'a>
let getUnsafe: (Js.Dict.t<'a>, Js.Dict.key) => 'a
let fromArray: array<(Js.Dict.key, 'a)> => Js.Dict.t<'a>
let entries: Js.Dict.t<'a> => array<(Js.Dict.key, 'a)>
let values: Js.Dict.t<'a> => array<'a>
let merge: (t<'a>, t<'a>) => t<'a>
let map: (Js.Dict.t<'a>, (. 'a) => 'b) => Js.Dict.t<'b>
module Mut: {
  let set: (Js.Dict.t<'a>, Js.Dict.key, 'a) => unit
}
