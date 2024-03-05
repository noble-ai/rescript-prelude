@@ocaml.doc("
## Javascript Map
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map)
Keys are compared by a specific method almost by-reference.
Maps modifications are implemented mutably, so get/set/delete/clear include a clone.
")


type t<'key, 'value>
@new external make: unit => t<'k, 'v> = "Map"
@new external fromIterable: Iterable.t<('k, 'v)> => t<'k, 'v> = "Map"
@get external size: t<'k, 'v> => int = "size"
@send external entries: t<'k, 'v> => Iterable.t<('k, 'v)> = "entries"
@send external keys: t<'k, 'v> => Iterable.t<'k> = "keys"
@send external values: t<'k, 'v> => Iterable.t<'v> = "values"
@send external forEach: (t<'k, 'v>, ('v, 'k, t<'k, 'v>) => unit) => unit = "forEach"
@send external has: (t<'k, 'v>, 'k) => bool = "has"
@send external get: (t<'k, 'v>, 'k) => option<'v> = "get"
@send external getUnsafe: (t<'k, 'v>, 'k) => 'v = "get"
module Mut: {
  @send external set: (t<'k, 'v>, 'k, 'v) => unit = "set"
  @send external delete: (t<'k, 'v>, 'k) => unit = "delete"
  @send external clear: t<'k, 'v> => unit = "clear"
}
let clone: t<'a, 'b> => t<'a, 'b>
let set: (t<'a, 'b>, 'a, 'b) => t<'a, 'b>
let delete: (t<'a, 'b>, 'a) => t<'a, 'b>
let clear: 'a => t<'b, 'c>
let reduce: (t<'key, 'value>, ('acc, 'key, 'value) => 'acc, 'acc) =>'acc 

@ocaml.doc("
Since the key comaprisons in Js map are vaguely by reference,
they play poorly with rescripts ease of creating new values.
So for situations where you have a key that is not a primitive
where the value and reference comparison collapse
Use Complex Map, providing a string representation of your type
So we can track those key values separate from the value values
and pretend everything is the same
")

module Complex: {
  module type Key = {
    type t
    let toString: t => string
  }
  module Make: (Key: Key) =>
  {
    type keys = t<string, Key.t>
    type values<'value> = t<string, 'value>
    type t<'value> = (keys, values<'value>)
    let fromArray: Array.t<(Key.t, 'value)> => t<'value>
    let make: unit => t<'value>
    let size: t<'value> => int
    let entries: t<'value> => Iterable.t<(Key.t, 'value)>
    let keys: t<'value> => Iterable.t<Key.t>
    let values: t<'value> => Iterable.t<'value>
    let forEach: (t<'value>, (Key.t, 'value, t<'value>) => unit) => unit
    let has: (t<'value>, Key.t) => bool
    let get: (t<'value>, Key.t) => option<'value>
    let getUnsafe: (t<'value>, Key.t) => 'value 
    module Mut: {
      let set: (t<'value>, Key.t, 'value) => unit
      let delete: (t<'value>, Key.t) => unit
      let clear: t<'value> => unit
    }
    let clone: t<'value> => t<'value> 
    let set: (t<'value>, Key.t, 'value) => t<'value>
    let delete: (t<'value>, Key.t) => t<'value>
    let clear: t<'value> => t<'value>
    let reduce: (t<'value>, ('acc, Key.t, 'value) => 'acc, 'acc) =>'acc 
  }
}
