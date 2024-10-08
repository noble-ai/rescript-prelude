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

module Mut = {
  @send external set: (t<'k, 'v>, 'k, 'v) => unit = "set"
  @send external delete: (t<'k, 'v>, 'k) => unit = "delete"
  @send external clear: t<'k, 'v> => unit = "clear"
}

let clone = x => x->entries->fromIterable
let set = (map, key, value) => {
  let new = map->clone
  new->Mut.set(key, value)
  new
}

let delete = (map, key) => {
  let new = map->clone
  new->Mut.delete(key)
  new
}

let clear = _ => make()

let reduce = (map, f, acc) => {
	map
	->entries
	->Array.fromIterable
	->Array.reduce( (acc, (key, value)) => f(acc, key, value), acc)
}

module Complex = {
  module type Key = {
    type t
    let toString: t => string
  }

  module Make = (Key: Key) => {
    type keys = t<string, Key.t>
    type values<'value> = t<string, 'value>
    type t<'value> = (keys, values<'value>)
    let fromArray = iterable => {
      let keys: keys = make()
      let values: values<'value> = make()
      iterable->Array.forEach(((key, value)) => {
        Mut.set(keys, Key.toString(key), key)
        Mut.set(values, Key.toString(key), value)
      })
      (keys, values)
    }
    let make = () => (make(), make())
    let size = ((keys, _)) => keys->size
    let entries = ((keys, values)) => {
      let result = []
      keys->forEach((value, key, _) => {
        let _ = result->Array.Mut.push((value, values->getUnsafe(key)))
      })
      result->Array.toIterable
    }

    let keys = ((keys, _)) => keys->values
    let values = ((_, vs)) => vs->values
    let forEach: (t<'value>, (Key.t, 'value, t<'value>) => unit) => unit = ((keys, values) as map, f) => {
      keys->forEach((value, key, _) => f(value, values->getUnsafe(key), map))
    }

    let has = ((keys, _), key) => keys->has(Key.toString(key))
    let get = ((_, values), key) => values->get(Key.toString(key))
    let getUnsafe = ((_, values), key) => values->getUnsafe(Key.toString(key))

    module Mut = {
      let set = ((keys, values), key, value) => {
        Mut.set(keys, Key.toString(key), key)
        Mut.set(values, Key.toString(key), value)
      }
      let delete = ((keys, values), key) => {
        Mut.delete(keys, Key.toString(key))
        Mut.delete(values, Key.toString(key))
      }
      let clear: t<'value> => unit = ((keys, values)) => {
        Mut.clear(keys)
        Mut.clear(values)
      }
    }

    let clone = ((keys, values)) => {
      let keys = keys->clone
      let values = values->clone
      (keys, values)
    }

    let set = (map, key, value): t<'a> => {
      let new = map->clone
      new->Mut.set(key, value)
      new
    }

    let delete = (map, key): t<'a> => {
      let new = map->clone
      new->Mut.delete(key)
      new
    }

    let clear: t<'value> => t<'value> = _ => make()

    let reduce = (map, f, acc) => {
      map
      ->entries
      ->Array.fromIterable
      ->Array.reduce( (acc, (key, value)) => f(acc, key, value), acc)
    }
  }
}
