///doc/ # Int

type t = Js.Json.t
let stringify = Js.Json.stringify

let parseExn = Js.Json.parseExn
let decodeObject = Js.Json.decodeObject
let decodeArray = Js.Json.decodeArray
let decodeString = Js.Json.decodeString
let decodeNumber = Js.Json.decodeNumber
let decodeBoolean = Js.Json.decodeBoolean
let decodeNull = Js.Json.decodeNull

let string = Js.Json.string
let object_ = Js.Json.object_
let boolean = Js.Json.boolean
let classify = Js.Json.classify
let null = Js.Json.null
let array = Js.Json.array