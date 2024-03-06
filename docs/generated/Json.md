# Json




### Json.t
  
`type t = Js.Json.t`  


### Json.stringify
  
`let stringify: Js.Json.t => string`  


### Json.parseExn
  
`let parseExn: string => Js.Json.t`  


### Json.decodeObject
  
`let decodeObject: Js.Json.t => option<Js_dict.t<Js.Json.t>>`  


### Json.decodeArray
  
`let decodeArray: Js.Json.t => option<array<Js.Json.t>>`  


### Json.decodeString
  
`let decodeString: Js.Json.t => option<Js_string.t>`  


### Json.decodeNumber
  
`let decodeNumber: Js.Json.t => option<float>`  


### Json.decodeInt
  
`let decodeInt: Js.Json.t => option<Int.t>`  


### Json.decodeBoolean
  
`let decodeBoolean: Js.Json.t => option<bool>`  


### Json.decodeNull
  
`let decodeNull: Js.Json.t => option<Js_null.t<'a>>`  


### Json.Result
  
  
### Json.Result.t
  
`type t = t`  


### Json.Result.decodeObject
  
`let decodeObject: (Js.Json.t, 'a) => Result.t<Js_dict.t<Js.Json.t>, 'a>`  


### Json.Result.decodeArray
  
`let decodeArray: (Js.Json.t, 'a) => Result.t<array<Js.Json.t>, 'a>`  


### Json.Result.decodeString
  
`let decodeString: (Js.Json.t, 'a) => Result.t<Js_string.t, 'a>`  


### Json.Result.decodeNumber
  
`let decodeNumber: (Js.Json.t, 'a) => Result.t<float, 'a>`  


### Json.Result.decodeInt
  
`let decodeInt: (Js.Json.t, 'a) => Result.t<Int.t, 'a>`  


### Json.Result.decodeBoolean
  
`let decodeBoolean: (Js.Json.t, 'a) => Result.t<bool, 'a>`  


### Json.Result.decodeNull
  
`let decodeNull: (Js.Json.t, 'a) => Result.t<Js_null.t<'b>, 'a>`  


### Json.string
  
`let string: string => Js.Json.t`  


### Json.object_
  
`let object_: Js_dict.t<Js.Json.t> => Js.Json.t`  


### Json.boolean
  
`let boolean: bool => Js.Json.t`  


### Json.classify
  
`let classify: Js.Json.t => Js.Json.tagged_t`  


### Json.null
  
`let null: Js.Json.t`  


### Json.array
  
`let array: array<Js.Json.t> => Js.Json.t`  


### Json.number
  
`let number: float => Js.Json.t`  

