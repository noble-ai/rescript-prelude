type t = Js.Json.t
let stringify: Js.Json.t => string
let parseExn: string => Js.Json.t
let decodeObject: Js.Json.t => option<Js_dict.t<Js.Json.t>>
let decodeArray: Js.Json.t => option<array<Js.Json.t>>
let decodeString: Js.Json.t => option<Js_string.t>
let decodeNumber: Js.Json.t => option<float>
let decodeInt: Js.Json.t => option<Int.t>
let decodeBoolean: Js.Json.t => option<bool>
let decodeNull: Js.Json.t => option<Js_null.t<'a>>
module Result: {
  type t = t
  let decodeObject: (Js.Json.t, 'a) => Result.t<Js_dict.t<Js.Json.t>, 'a>
  let decodeArray: (Js.Json.t, 'a) => Result.t<array<Js.Json.t>, 'a>
  let decodeString: (Js.Json.t, 'a) => Result.t<Js_string.t, 'a>
  let decodeNumber: (Js.Json.t, 'a) => Result.t<float, 'a>
  let decodeInt: (Js.Json.t, 'a) => Result.t<Int.t, 'a>
  let decodeBoolean: (Js.Json.t, 'a) => Result.t<bool, 'a>
  let decodeNull: (Js.Json.t, 'a) => Result.t<Js_null.t<'b>, 'a>
}
let string: string => Js.Json.t
let object_: Js_dict.t<Js.Json.t> => Js.Json.t
let boolean: bool => Js.Json.t
let classify: Js.Json.t => Js.Json.tagged_t
let null: Js.Json.t
let array: array<Js.Json.t> => Js.Json.t
let number: float => Js.Json.t