///doc/ # Map
///doc/ ## Javascript Map 
///doc/ https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map
///doc/ Keys are compared by a specific method almost by-reference.
///doc/ Maps modifications are implemented mutably, so get/set/delete/clear include a clone.

type t<'key, 'value>

@new external make: () => t<'k, 'v> = "Map"
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

let clear = (_) => make()

///doc/ ## Complex Map
///doc/ Since the key comaprisons in Js map are vaguely by reference, 
///doc/ they play poorly with rescripts ease of creating new values.
///doc/ So for situations where you have a key that is not a primitive
///doc/ where the value and reference comparison collapse
///doc/ Use Complex Map, providing a string representation of your type
///doc/ So we can track those key values separate from the value values
///doc/ and pretend everything is the same

module type ToString = {
	type t
	let toString: t => string
}

module Complex = (ToString: ToString) => {
	type keys = t<string, ToString.t>
	type values<'value> = t<string, 'value>
	type t<'value>  = (keys, values<'value>)
	let fromIterable = iterable => {
		let keys: keys = make()
		let values: values<'value> = make()
		iterable->Iterable.forEach(((key, value)) => {
			Mut.set(keys, ToString.toString(key), key)
			Mut.set(values, ToString.toString(key), value)
		})
		(keys, values)
	}
	let make = () => (make(), make())
	let size = ((keys, _)) => keys->size
	let entries = ((keys, values)) => {
		let result = []
		keys->forEach((value, key, _) => {
			let _ = result->Array.push((value, values->getUnsafe(key)))
			()
		})
		result->Array.toIterable
	}
	let keys = ((keys, _)) => keys->values 
	let values = ((_, vs)) => vs->values
	let forEach = ((keys, values) as map, f) => {
		keys->forEach((key, value) => {
			f(value, values->getUnsafe(key), map)
		})
	}

	let has = ((keys, _), key) => keys->has(ToString.toString(key))
	let get = ((_, values), key) => values->get(ToString.toString(key))
	let getUnsafe = ((_, values), key) => values->getUnsafe(ToString.toString(key))

	module Mut = {
		let set = ((keys, values), key, value) => {
			Mut.set(keys, ToString.toString(key), key)
			Mut.set(values, ToString.toString(key), value)
		}
		let delete = ((keys, values), key) => {
			Mut.delete(keys, ToString.toString(key))
			Mut.delete(values, ToString.toString(key))
		}
		let clear = ((keys, values)) => {
			Mut.clear(keys)
			Mut.clear(values)
		}
	}

	let clone = ((keys, values)) => {
		let keys = keys->clone
		let values = values->clone
		(keys, values)
	}

	let set = (map, key, value) => map->clone->Mut.set(key, value)
	let delete = (map, key) => map->clone->Mut.delete(key)
	let clear = make
}