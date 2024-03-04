# Dict


### t

type t<'a> = Js.Dict.t<'a>

### empty

let empty: unit => Js.Dict.t<'a>

### set

let set: (t<'a>, Js.Dict.key, 'a) => t<'a>

### get

let get: (Js.Dict.t<'a>, Js.Dict.key) => option<'a>

### getUnsafe

let getUnsafe: (Js.Dict.t<'a>, Js.Dict.key) => 'a

### fromArray

let fromArray: array<(Js.Dict.key, 'a)> => Js.Dict.t<'a>

### entries

let entries: Js.Dict.t<'a> => array<(Js.Dict.key, 'a)>

### values

let values: Js.Dict.t<'a> => array<'a>

### merge

let merge: (t<'a>, t<'a>) => t<'a>

### map

let map: (Js.Dict.t<'a>, 'a => 'b) => Js.Dict.t<'b>

### Mut


