type t = Js.Json.t
let stringify = Js.Json.stringify

let parseExn = Js.Json.parseExn
let decodeObject = Js.Json.decodeObject
let decodeArray = Js.Json.decodeArray
let decodeString = Js.Json.decodeString
let decodeNumber = Js.Json.decodeNumber
let decodeInt = json => json->decodeNumber->Option.bind(Int.fromFloat)
let decodeBoolean = Js.Json.decodeBoolean
let decodeNull = Js.Json.decodeNull

module Result = {
	type t = t
	let decodeObject = (json, err) => json->Js.Json.decodeObject->Result.fromOption(err)
	let decodeArray = (json, err) => json->Js.Json.decodeArray->Result.fromOption(err)
	let decodeString = (json, err) => json->Js.Json.decodeString->Result.fromOption(err)
	let decodeNumber = (json, err) => json->Js.Json.decodeNumber->Result.fromOption(err)
	let decodeInt = (json, err) => json->decodeInt->Result.fromOption(err)
	let decodeBoolean = (json, err) => json->Js.Json.decodeBoolean->Result.fromOption(err)
	let decodeNull = (json, err) => json->Js.Json.decodeNull->Result.fromOption(err)
}

let string = Js.Json.string
let object_ = Js.Json.object_
let boolean = Js.Json.boolean
let classify = Js.Json.classify
let null = Js.Json.null
let array = Js.Json.array