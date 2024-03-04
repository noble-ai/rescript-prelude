# Map


### t

type t<'key, 'value>

### make

let make: unit => t<'k, 'v>

### fromIterable

let fromIterable: Iterable.t<('k, 'v)> => t<'k, 'v>

### size

let size: t<'k, 'v> => int

### entries

let entries: t<'k, 'v> => Iterable.t<('k, 'v)>

### keys

let keys: t<'k, 'v> => Iterable.t<'k>

### values

let values: t<'k, 'v> => Iterable.t<'v>

### forEach

let forEach: (t<'k, 'v>, ('v, 'k, t<'k, 'v>) => unit) => unit

### has

let has: (t<'k, 'v>, 'k) => bool

### get

let get: (t<'k, 'v>, 'k) => option<'v>

### getUnsafe

let getUnsafe: (t<'k, 'v>, 'k) => 'v

### Mut


### clone

let clone: t<'a, 'b> => t<'a, 'b>

### set

let set: (t<'a, 'b>, 'a, 'b) => t<'a, 'b>

### delete

let delete: (t<'a, 'b>, 'a) => t<'a, 'b>

### clear

let clear: 'a => t<'b, 'c>

### reduce

let reduce: (t<'a, 'b>, ('c, 'a, 'b) => 'c, 'c) => 'c

### ToString


### Complex


