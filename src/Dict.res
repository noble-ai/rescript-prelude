type t<'a> = Js.Dict.t<'a>
let empty = Js.Dict.empty

let set: (t<'a>, Js.Dict.key, 'a) => t<'a> = %raw(`(dict, key, a) => { return {...dict, [key]: a} }`)
let get = Js.Dict.get
let getUnsafe = Js.Dict.unsafeGet
let fromArray = Js.Dict.fromArray
let entries = Js.Dict.entries
let values = Js.Dict.values
let merge: (t<'a>, t<'a>) => t<'a> = %raw(`(dict1, dict2) => { return {...dict1, ...dict2} }`)
let map = (d, fn) => Js.Dict.map(fn, d)

module Mut = {
	@ocaml.doc("Mutable set causes react state to not be invalidated and does not trigger rerender.")
	let set = Js.Dict.set
}
