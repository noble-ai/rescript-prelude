# Json


### t

type t = Js.Json.t

### stringify

let stringify: Js.Json.t => string

### parseExn

let parseExn: string => Js.Json.t

### decodeObject

let decodeObject: Js.Json.t => option<Js_dict.t<Js.Json.t>>

### decodeArray

let decodeArray: Js.Json.t => option<array<Js.Json.t>>

### decodeString

let decodeString: Js.Json.t => option<Js_string.t>

### decodeNumber

let decodeNumber: Js.Json.t => option<float>

### decodeInt

let decodeInt: Js.Json.t => option<Int.t>

### decodeBoolean

let decodeBoolean: Js.Json.t => option<bool>

### decodeNull

let decodeNull: Js.Json.t => option<Js_null.t<'a>>

### Result


### string

let string: string => Js.Json.t

### object_

let object_: Js_dict.t<Js.Json.t> => Js.Json.t

### boolean

let boolean: bool => Js.Json.t

### classify

let classify: Js.Json.t => Js.Json.tagged_t

### null

let null: Js.Json.t

### array

let array: array<Js.Json.t> => Js.Json.t

