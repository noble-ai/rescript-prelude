# Array


\n  ## N+1 Array bindings.  \n  Moderately opinionated to avoid some of the inspecific nature of primitive js functions, and make naming more explicit or consistent with other modules here. \n  Works to avoid sparse arrays for type safety. \n

### Array.t
  
`type t<'a> = array<'a>`  


### Array.fromIterable
  
`let fromIterable: Iterable.t<'t> => t<'t>`  


### Array.return
  
`let return: 'a => t<'a>`  


### Array.clone
  
`let clone: t<'a> => t<'a>`  
Use spread operator to make a shallow copy of an array

### Array.range
  
`let range: int => t<int>`  
[0..i) excludes i

### Array.rangeInclusive
  
`let rangeInclusive: int => t<int>`  
Use range instead  


### Array.toIterable
  
`let toIterable: t<'t> => Iterable.t<'t>`  


### Array.length
  
`let length: t<'a> => int`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/length)

### Array.includes
  
`let includes: (t<'a>, 'a) => bool`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/includes)

### Array.forEach
  
`let forEach: (t<'a>, 'a => unit) => unit`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)

### Array.forEachi
  
`let forEachi: (t<'a>, ('a, int) => unit) => unit`  


### Array.tap
  
`let tap: (t<'a>, t<'a> => unit) => t<'a>`  
pass an array to an effect, returning the original array

### Array.tapMap
  
`let tapMap: (t<'a>, 'a => unit) => t<'a>`  
pass each element of an array to an effect, returning the original array

### Array.getUnsafe
  
`let getUnsafe: (t<'a>, int) => 'a`  


### Array.get
  
`let get: (t<'a>, int) => option<'a>`  


### Array.getExn
  
`let getExn: (t<'a>, int) => 'a`  


### Array.indexOf
  
`let indexOf: (t<'a>, 'a) => option<int>`  
Use findIndex instead: This has vague comparison semantics  
indexOf uses strict equality for comparison which does not play well with rescripts more-but-not-clearly value based situations.[{a: 3}, {a: 4}].indexOf({a: 4}) == -1.

### Array.findIndex
  
`let findIndex: (t<'a>, 'a => bool) => option<int>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)

### Array.getIndexBy
  
`let getIndexBy: (t<'a>, 'a => bool) => option<int>`  
Use findIndex instead  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)

### Array.all
  
`let all: (t<'a>, 'a => bool) => bool`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every)

### Array.alli
  
`let alli: (t<'a>, ('a, int) => bool) => bool`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every)

### Array.every
  
`let every: (t<'a>, 'a => bool) => bool`  
Use all instead: Renamed to match Promise, Result, etc  


### Array.everyi
  
`let everyi: (t<'a>, ('a, int) => bool) => bool`  
Use alli instead: : Renamed to match Promise, Result, etc  


### Array.some
  
`let some: (t<'a>, 'a => bool) => bool`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)

### Array.somei
  
`let somei: (t<'a>, ('a, int) => bool) => bool`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)

### Array.isEmpty
  
`let isEmpty: t<'a> => bool`  


### Array.Mut
  
Mutating functions on Array.t  
### Array.Mut.sort
  
`let sort: t<'a> => t<'a>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort)

### Array.Mut.reverse
  
`let reverse: t<'a> => t<'a>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse)

### Array.Mut.splice
  
`let splice: (t<'a>, ~index: int, ~remove: int, array<'a>) => t<'a>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice)

### Array.Mut.splice_
  
`let splice_: (t<'a>, ~index: int, ~remove: int, array<'a>) => unit`  


### Array.Mut.push
  
`let push: (t<'a>, 'a) => int`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/push)

### Array.Mut.push_
  
`let push_: (t<'a>, 'a) => unit`  


### Array.Mut.pushMany
  
`let pushMany: (t<'a>, array<'a>) => int`  


### Array.Mut.pushMany_
  
`let pushMany_: (t<'a>, array<'a>) => unit`  


### Array.Mut.set
  
`let set: (t<'a>, int, 'a) => unit`  


### Array.setUnsafe
  
`let setUnsafe: (t<'a>, int, 'a) => t<'a>`  


### Array.set
  
`let set: (t<'a>, int, 'a) => t<'a>`  


### Array.setExn
  
`let setExn: (t<'a>, int, 'a) => t<'a>`  


### Array.map
  
`let map: (t<'a>, 'a => 'b) => t<'b>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)

### Array.mapi
  
`let mapi: (t<'a>, ('a, int) => 'b) => t<'b>`  


### Array.const
  
`let const: (t<'x>, 'b) => t<'b>`  
return a new array with each element replaced with `b`

### Array.bind
  
`let bind: (t<'a>, 'a => t<'b>) => t<'b>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/flatMap)

### Array.bindi
  
`let bindi: (t<'a>, ('a, int) => t<'b>) => t<'b>`  


### Array.join
  
`let join: t<t<'a>> => t<'a>`  
Collapse an array of arrays by one degree

### Array.flatten
  
`let flatten: t<t<'a>> => t<'a>`  
use join instead  
Renamed to match Promise, Result, Option

### Array.filter
  
`let filter: (t<'a>, 'a => bool) => t<'a>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter)

### Array.filteri
  
`let filteri: (t<'a>, ('a, int) => bool) => t<'a>`  


### Array.keepMap
  
`let keepMap: (t<'a>, 'a => option<'b>) => t<'b>`  


### Array.catOptions
  
`let catOptions: t<option<'a>> => t<'a>`  


### Array.keepBind
  
`let keepBind: (t<option<'a>>, 'a => option<'b>) => t<'b>`  


### Array.first
  
`let first: (t<'a>, 'a => bool) => option<'a>`  


### Array.firsti
  
`let firsti: (t<'a>, ('a, int) => bool) => option<'a>`  


### Array.firstOption
  
`let firstOption: (t<'a>, 'a => option<'b>) => option<'b>`  


### Array.find
  
`let find: (t<'a>, 'a => bool) => option<'a>`  
Use first instead  


### Array.findi
  
`let findi: (t<'a>, ('a, int) => bool) => option<'a>`  
Use firsti instead  


### Array.firstEq
  
`let firstEq: (t<'a>, 'a) => option<'a>`  


### Array.findEq
  
`let findEq: (t<'a>, 'a) => option<'a>`  


### Array.firstBy
  
`let firstBy: (t<'a>, 'a => 'b, 'b) => option<'a>`  


### Array.findBy
  
`let findBy: (t<'a>, 'a => 'b, 'b) => option<'a>`  
Use first instead  


### Array.last
  
`let last: (t<'a>, 'a => bool) => option<'a>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLast)

### Array.lasti
  
`let lasti: (t<'a>, ('a, int) => bool) => option<'a>`  


### Array.findLast
  
`let findLast: (t<'a>, 'a => bool) => option<'a>`  
Use last instead  


### Array.findLasti
  
`let findLasti: (t<'a>, ('a, int) => bool) => option<'a>`  
Use lasti instead  


### Array.joinWith
  
`let joinWith: (t<string>, string) => string`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join)

### Array.reduce
  
`let reduce: (t<'a>, ('b, 'a) => 'b, 'b) => 'b`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)

### Array.reducei
  
`let reducei: (t<'a>, ('b, 'a, int) => 'b, 'b) => 'b`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)

### Array.reverse
  
`let reverse: t<'a> => t<'a>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toReversed)

### Array.toIndices
  
`let toIndices: t<'a> => t<int>`  


### Array.sort
  
`let sort: t<'a> => t<'a>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toSorted)

### Array.sortCmp
  
`let sortCmp: (t<'a>, ('a, 'a) => int) => t<'a>`  


### Array.slice
  
`let slice: (t<'a>, int, int) => t<'a>`  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice)

### Array.sliceFrom
  
`let sliceFrom: (t<'a>, int) => t<'a>`  


### Array.head
  
`let head: t<'a> => option<'a>`  
return first element

### Array.tail
  
`let tail: t<'a> => t<'a>`  


### Array.stem
  
`let stem: t<'a> => t<'a>`  
all but last element

### Array.leaf
  
`let leaf: t<'a> => option<'a>`  


### Array.take
  
`let take: (t<'a>, int) => t<'a>`  


### Array.zipAdjacent
  
`let zipAdjacent: t<'a> => t<('a, 'a)>`  


### Array.partition
  
`let partition: (t<'a>, ('a, int) => bool) => (t<'a>, t<'a>)`  


### Array.evenOdd
  
`type evenOdd<'a> = {even: t<'a>, odd: t<'a>}`  


### Array.partitionIndexEvenOdd
  
`let partitionIndexEvenOdd: t<'a> => evenOdd<'a>`  
Use partition with your own predicate instead  


### Array.cross
  
`let cross: (t<'a>, t<'b>) => t<('a, 'b)>`  


### Array.splitAt
  
`let splitAt: (t<'a>, int) => (t<'a>, t<'a>)`  


### Array.intercalate
  
`let intercalate: (t<'a>, 'a) => t<'a>`  


### Array.intercalateWithGenerator
  
`let intercalateWithGenerator: (t<'a>, int => 'a) => t<'a>`  


### Array.concat
  
`let concat: (t<'a>, t<'a>) => t<'a>`  
Use spread operator to combine two arrays

### Array.append
  
`let append: (t<'a>, 'a) => t<'a>`  
Use spread operator to append an element to an array

### Array.prepend
  
`let prepend: ('a, t<'a>) => t<'a>`  
Use spread operator to prepend an element to an array

### Array.splice
  
`let splice: (t<'a>, ~index: int, ~remove: int, t<'a>) => t<'a>`  


### Array.replace
  
`let replace: (t<'a>, 'a, int) => t<'a>`  


### Array.insert
  
`let insert: (t<'a>, 'a, int) => t<'a>`  


### Array.remove
  
`let remove: (t<'a>, int) => t<'a>`  


### Array.combinations
  
`let combinations: (t<'a>, ~begin: t<'a>=?, ~size: int) => t<t<'a>>`  


### Array.generateCombinations
  
`let generateCombinations: (t<'a>, ~begin: t<'a>=?, ~size: int) => t<t<'a>>`  
Use combinations instead  

# Date




### Date.t
  
`type t = Js.Date.t`  


### Date.fromFloat
  
`let fromFloat: float => Js.Date.t`  


### Date.valueOf
  
`let valueOf: Js.Date.t => float`  


### Date.toString
  
`let toString: Js.Date.t => string`  


### Date.toStringIso
  
`let toStringIso: Js.Date.t => string`  


### Date.toStringDate
  
`let toStringDate: Js.Date.t => string`  


### Date.make
  
`let make: unit => Js.Date.t`  


### Date.now
  
`let now: unit => float`  


### Date.fromString
  
`let fromString: string => Js.Date.t`  


### Date.setUTCHoursMSMs
  
`let setUTCHoursMSMs: (
  Js.Date.t,
  ~hours: float,
  ~minutes: float,
  ~seconds: float,
  ~milliseconds: float,
  unit,
) => float`  


### Date.Mut
  
  
### Date.Mut.setHours
  
`let setHours: (Js.Date.t, float) => float`  


### Date.Mut.setMinutes
  
`let setMinutes: (Js.Date.t, float) => float`  


### Date.Mut.setSeconds
  
`let setSeconds: (Js.Date.t, float) => float`  


### Date.Mut.setMilliseconds
  
`let setMilliseconds: (Js.Date.t, float) => float`  


### Date.Mut.setDate
  
`let setDate: (Js.Date.t, float) => float`  


### Date.Mut.setTime
  
`let setTime: (Js.Date.t, float) => float`  


### Date.getTime
  
`let getTime: Js.Date.t => float`  


### Date.getDate
  
`let getDate: Js.Date.t => float`  

# Dict




### Dict.t
  
`type t<'a> = Js.Dict.t<'a>`  


### Dict.empty
  
`let empty: unit => Js.Dict.t<'a>`  


### Dict.set
  
`let set: (t<'a>, Js.Dict.key, 'a) => t<'a>`  


### Dict.get
  
`let get: (Js.Dict.t<'a>, Js.Dict.key) => option<'a>`  


### Dict.getUnsafe
  
`let getUnsafe: (Js.Dict.t<'a>, Js.Dict.key) => 'a`  


### Dict.fromArray
  
`let fromArray: array<(Js.Dict.key, 'a)> => Js.Dict.t<'a>`  


### Dict.entries
  
`let entries: Js.Dict.t<'a> => array<(Js.Dict.key, 'a)>`  


### Dict.values
  
`let values: Js.Dict.t<'a> => array<'a>`  


### Dict.merge
  
`let merge: (t<'a>, t<'a>) => t<'a>`  


### Dict.map
  
`let map: (Js.Dict.t<'a>, 'a => 'b) => Js.Dict.t<'b>`  


### Dict.Mut
  
  
### Dict.Mut.set
  
`let set: (Js.Dict.t<'a>, Js.Dict.key, 'a) => unit`  

# Either




### Either.t
  
`type t<'a, 'b> = Left('a) | Right('b)`  


### Either.left
  
`let left: 'a => t<'a, 'b>`  


### Either.right
  
`let right: 'b => t<'a, 'b>`  


### Either.map
  
`let map: 'r. ('l => 'lo, t<'l, 'r>) => t<'lo, 'r>`  


### Either.bimap
  
`let bimap: ('l => 'lo, 'r => 'ro, t<'l, 'r>) => t<'lo, 'ro>`  


### Either.sequence
  
`let sequence: t<option<'a>, option<'b>> => option<t<'a, 'b>>`  


### Either.either
  
`let either: ('a => 'c, 'b => 'c, t<'a, 'b>) => 'c`  


### Either.Nested
  
  
### Either.Nested.t1
  
`type t1<'a> = t<'a, unit>`  


### Either.Nested.t2
  
`type t2<'a, 'b> = t<'a, t1<'b>>`  


### Either.Nested.t3
  
`type t3<'a, 'b, 'c> = t<'a, t2<'b, 'c>>`  


### Either.Nested.t4
  
`type t4<'a, 'b, 'c, 'd> = t<'a, t3<'b, 'c, 'd>>`  


### Either.Nested.t5
  
`type t5<'a, 'b, 'c, 'd, 'e> = t<'a, t4<'b, 'c, 'd, 'e>>`  


### Either.Nested.t6
  
`type t6<'a, 'b, 'c, 'd, 'e, 'f> = t<
  'a,
  t5<'b, 'c, 'd, 'e, 'f>,
>`  

# Exn




### Exn.t
  
`type t = Js.Exn.t`  


### Exn.raise
  
`let raise: string => 'a`  


### Exn.message
  
`let message: Js.Exn.t => option<string>`  

# File




### File.t
  
`type t`  


### File.make
  
`let make: unit => t`  


### File.lastModified
  
`let lastModified: t => int`  


### File.lastModifiedDate
  
`let lastModifiedDate: t => Js.Date.t`  


### File.name
  
`let name: t => string`  


### File.webkitRelativePath
  
`let webkitRelativePath: t => string`  


### File.type_
  
`let type_: t => string`  


### File.size
  
`let size: t => int`  


### File.tToJsT
  
`let tToJsT: t => {..}`  


### File.slice
  
`let slice: (
  t,
  ~start: int=?,
  ~end: int=?,
  ~contentType: string=?,
  unit,
) => t`  


### File.stream
  
`type stream`  


### File.stream
  
`let stream: t => stream`  


### File.text
  
`let text: t => string`  


### File.Blob
  
  
### File.Blob.t
  
`type t`  


### File.makeBlob
  
`let makeBlob: (array<'a>, 'opts) => Blob.t`  

# Float




### Float.toLocaleString
  
`let toLocaleString: float => string`  


### Float.fromString
  
`let fromString: string => option<float>`  


### Float.fromStringUnsafe
  
`let fromStringUnsafe: string => float`  


### Float.toString
  
`let toString: float => string`  


### Float.toStringWithRadix
  
`let toStringWithRadix: (float, ~radix: int) => string`  


### Float.isNaN
  
`let isNaN: float => bool`  


### Float.optsLocale
  
`type optsLocale = {
  style: string,
  minimumFractionDigits: int,
}`  


### Float.toLocaleStringOptions
  
`let toLocaleStringOptions: (float, Js.Undefined.t<string>, optsLocale) => string`  


### Float.toExponential
  
`let toExponential: float => string`  


### Float.toExponentialWithPrecision
  
`let toExponentialWithPrecision: (float, ~digits: int) => string`  


### Float.toFixed
  
`let toFixed: float => string`  


### Float.toFixedWithPrecision
  
`let toFixedWithPrecision: (float, ~digits: int) => string`  


### Float.toPrecisionWithPrecision
  
`let toPrecisionWithPrecision: (float, ~digits: int) => string`  


### Float.positiveInfinity
  
`let positiveInfinity: float`  


### Float.negativeInfinity
  
`let negativeInfinity: float`  


### Float.formatNumber
  
`let formatNumber: (float, string) => string`  


### Float.formatNumberDefault
  
`let formatNumberDefault: float => string`  


### Float.shortenLargeFloat
  
`let shortenLargeFloat: float => string`  


### Float.unsafeFloatToInt
  
`let unsafeFloatToInt: float => int`  


### Float.round
  
`let round: float => int`  


### Float.ceil
  
`let ceil: float => int`  


### Float.floor
  
`let floor: float => int`  


### Float.min
  
`let min: (float, float) => float`  


### Float.minMany
  
`let minMany: array<float> => float`  


### Float.max
  
`let max: (float, float) => float`  


### Float.maxMany
  
`let maxMany: array<float> => float`  


### Float.random
  
`let random: unit => float`  


### Float.abs
  
`let abs: float => float`  


### Float.trunc
  
`let trunc: float => float`  


### Float.sign
  
`let sign: float => float`  


### Float.pow
  
`let pow: (~base: float, ~exp: float) => float`  

# FormData




### FormData.t
  
`type t`  


### FormData.make
  
`let make: unit => t`  


### FormData.appendString
  
`let appendString: (t, string, string) => unit`  


### FormData.appendInt
  
`let appendInt: (t, string, int) => unit`  


### FormData.appendFile
  
`let appendFile: (t, string, File.t) => unit`  


### FormData.appendBlob
  
`let appendBlob: (t, string, File.Blob.t, string) => unit`  


### FormData.appendInt2
  
`let appendInt2: (t, string, int) => t`  


### FormData.appendString2
  
`let appendString2: (t, string, string) => t`  


### FormData.appendFile2
  
`let appendFile2: (t, string, File.t) => t`  


### FormData.appendBlob2
  
`let appendBlob2: (t, string, File.Blob.t, string) => t`  


### FormData.toJs
  
`let toJs: t => {..}`  

# Int




### Int.t
  
`type t = int`  


### Int.toString
  
`let toString: int => string`  


### Int.fromString
  
`let fromString: string => option<int>`  


### Int.toFloat
  
`let toFloat: t => float`  


### Int.fromFloatUnsafe
  
`let fromFloatUnsafe: float => t`  


### Int.fromFloat
  
`let fromFloat: float => option<t>`  


### Int.initZeroDigitHelper
  
`let initZeroDigitHelper: int => string`  


### Int.min
  
`let min: (int, int) => int`  


### Int.minMany
  
`let minMany: array<int> => int`  


### Int.max
  
`let max: (int, int) => int`  


### Int.maxMany
  
`let maxMany: array<int> => int`  


### Int.abs
  
`let abs: int => int`  


### Int.sign
  
`let sign: int => int`  


### Int.mod
  
`let mod: (int, int) => int`  


### Int.random
  
`let random: (int, int) => int`  


### Int.toExponentialWithPrecision
  
`let toExponentialWithPrecision: (t, ~digits: int) => string`  

# Iterable




### Iterable.t
  
`type t<'a>`  

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

# Map




### Map.t
  
`type t<'key, 'value>`  


### Map.make
  
`let make: unit => t<'k, 'v>`  


### Map.fromIterable
  
`let fromIterable: Iterable.t<('k, 'v)> => t<'k, 'v>`  


### Map.size
  
`let size: t<'k, 'v> => int`  


### Map.entries
  
`let entries: t<'k, 'v> => Iterable.t<('k, 'v)>`  


### Map.keys
  
`let keys: t<'k, 'v> => Iterable.t<'k>`  


### Map.values
  
`let values: t<'k, 'v> => Iterable.t<'v>`  


### Map.forEach
  
`let forEach: (t<'k, 'v>, ('v, 'k, t<'k, 'v>) => unit) => unit`  


### Map.has
  
`let has: (t<'k, 'v>, 'k) => bool`  


### Map.get
  
`let get: (t<'k, 'v>, 'k) => option<'v>`  


### Map.getUnsafe
  
`let getUnsafe: (t<'k, 'v>, 'k) => 'v`  


### Map.Mut
  
  
### Map.Mut.set
  
`let set: (t<'k, 'v>, 'k, 'v) => unit`  


### Map.Mut.delete
  
`let delete: (t<'k, 'v>, 'k) => unit`  


### Map.Mut.clear
  
`let clear: t<'k, 'v> => unit`  


### Map.clone
  
`let clone: t<'a, 'b> => t<'a, 'b>`  


### Map.set
  
`let set: (t<'a, 'b>, 'a, 'b) => t<'a, 'b>`  


### Map.delete
  
`let delete: (t<'a, 'b>, 'a) => t<'a, 'b>`  


### Map.clear
  
`let clear: 'a => t<'b, 'c>`  


### Map.reduce
  
`let reduce: (t<'a, 'b>, ('c, 'a, 'b) => 'c, 'c) => 'c`  


### Map.ToString
  
  
### Map.ToString.t
  
`type t`  


### Map.ToString.toString
  
`let toString: t => string`  


### Map.Complex
  
  
### Map.Complex.keys
  
`type keys = t<string, ToString.t>`  


### Map.Complex.values
  
`type values<'value> = t<string, 'value>`  


### Map.Complex.t
  
`type t<'value> = (keys, values<'value>)`  


### Map.Complex.fromArray
  
`let fromArray: Array.t<(ToString.t, 'value)> => (keys, values<'value>)`  


### Map.Complex.make
  
`let make: unit => (t<'a, 'b>, t<'c, 'd>)`  


### Map.Complex.size
  
`let size: ((t<'a, 'b>, 'c)) => int`  


### Map.Complex.entries
  
`let entries: ((t<'a, 'b>, t<'a, 'c>)) => Iterable.t<('b, 'c)>`  


### Map.Complex.keys
  
`let keys: ((t<'a, 'b>, 'c)) => Iterable.t<'b>`  


### Map.Complex.values
  
`let values: (('a, t<'b, 'c>)) => Iterable.t<'c>`  


### Map.Complex.forEach
  
`let forEach: (
  (t<'a, 'b>, t<'b, 'c>),
  ('a, 'c, (t<'a, 'b>, t<'b, 'c>), t<'a, 'b>) => unit,
) => unit`  


### Map.Complex.has
  
`let has: ((t<string, 'a>, 'b), ToString.t) => bool`  


### Map.Complex.get
  
`let get: (('a, t<string, 'b>), ToString.t) => option<'b>`  


### Map.Complex.getUnsafe
  
`let getUnsafe: (('a, t<string, 'b>), ToString.t) => 'b`  


### Map.Complex.Mut
  
  
### Map.Complex.Mut.set
  
`let set: (
  (t<string, ToString.t>, t<string, 'a>),
  ToString.t,
  'a,
) => unit`  


### Map.Complex.Mut.delete
  
`let delete: ((t<string, 'a>, t<string, 'b>), ToString.t) => unit`  


### Map.Complex.Mut.clear
  
`let clear: ((t<'a, 'b>, t<'c, 'd>)) => unit`  


### Map.Complex.clone
  
`let clone: ((t<'a, 'b>, t<'c, 'd>)) => (t<'a, 'b>, t<'c, 'd>)`  


### Map.Complex.set
  
`let set: (
  (t<string, ToString.t>, t<string, 'a>),
  ToString.t,
  'a,
) => t<'a>`  


### Map.Complex.delete
  
`let delete: (
  (t<string, ToString.t>, t<string, 'a>),
  ToString.t,
) => t<'a>`  


### Map.Complex.clear
  
`let clear: unit => (t<'a, 'b>, t<'c, 'd>)`  


### Map.Complex.reduce
  
`let reduce: ((t<'a, 'b>, t<'a, 'c>), ('d, 'b, 'c) => 'd, 'd) => 'd`  

# Null




### Null.t
  
`type t<'a> = Js.Nullable.t<'a>`  


### Null.null
  
`let null: Js.Nullable.t<'a>`  


### Null.fromOption
  
`let fromOption: option<'a> => Js.Nullable.t<'a>`  


### Null.toOption
  
`let toOption: Js.Nullable.t<'a> => option<'a>`  


### Null.return
  
`let return: 'a => Js.Nullable.t<'a>`  

# Object




### Object.assign
  
`let assign: ({..}, {..}) => {..}`  

# Option




### Option.keepU
  
`let keepU: (option<'a>, 'a => bool) => option<'a>`  


### Option.keep
  
`let keep: (option<'a>, 'a => bool) => option<'a>`  


### Option.forEachU
  
`let forEachU: (option<'a>, 'a => unit) => unit`  


### Option.forEach
  
`let forEach: (option<'a>, 'a => unit) => unit`  


### Option.getExn
  
`let getExn: option<'a> => 'a`  


### Option.getUnsafe
  
`let getUnsafe: option<'a> => 'a`  


### Option.mapWithDefaultU
  
`let mapWithDefaultU: (option<'a>, 'b, 'a => 'b) => 'b`  


### Option.mapWithDefault
  
`let mapWithDefault: (option<'a>, 'b, 'a => 'b) => 'b`  


### Option.mapU
  
`let mapU: (option<'a>, 'a => 'b) => option<'b>`  


### Option.map
  
`let map: (option<'a>, 'a => 'b) => option<'b>`  


### Option.flatMapU
  
`let flatMapU: (option<'a>, 'a => option<'b>) => option<'b>`  


### Option.flatMap
  
`let flatMap: (option<'a>, 'a => option<'b>) => option<'b>`  


### Option.getWithDefault
  
`let getWithDefault: (option<'a>, 'a) => 'a`  


### Option.orElse
  
`let orElse: (option<'a>, option<'a>) => option<'a>`  


### Option.isSome
  
`let isSome: option<'a> => bool`  


### Option.isNone
  
`let isNone: option<'a> => bool`  


### Option.eqU
  
`let eqU: (option<'a>, option<'b>, ('a, 'b) => bool) => bool`  


### Option.eq
  
`let eq: (option<'a>, option<'b>, ('a, 'b) => bool) => bool`  


### Option.cmpU
  
`let cmpU: (option<'a>, option<'b>, ('a, 'b) => int) => int`  


### Option.cmp
  
`let cmp: (option<'a>, option<'b>, ('a, 'b) => int) => int`  


### Option.mapWithDefault
  
`let mapWithDefault: (option<'a>, 'b, 'a => 'b) => 'b`  
please use map->getWithDefault for ease of refactoring  


### Option.t
  
`type t<'a> = option<'a>`  


### Option.void
  
`let void: option<'a> => unit`  


### Option.getExn
  
`let getExn: (option<'a>, ~desc: string=?) => 'a`  


### Option.return
  
`let return: 'a => option<'a>`  


### Option.bind
  
`let bind: (option<'a>, 'a => option<'b>) => option<'b>`  


### Option.join
  
`let join: option<option<'a>> => option<'a>`  


### Option.const
  
`let const: (option<'a>, 'b) => option<'b>`  


### Option.some
  
`let some: 'a => option<'a>`  


### Option.none
  
`let none: option<'a> => option<'b>`  


### Option.apply
  
`let apply: (option<'a => 'b>, option<'a>) => option<'b>`  


### Option.liftA1
  
`let liftA1: ('a => 'r, option<'a>) => option<'r>`  


### Option.liftA2
  
`let liftA2: (('a, 'b) => 'r, option<'a>, option<'b>) => option<'r>`  


### Option.liftA3
  
`let liftA3: (
  ('a, 'b, 'c) => 'd,
  option<'a>,
  option<'b>,
  option<'c>,
) => option<'d>`  


### Option.applyFirst
  
`let applyFirst: (option<'a>, option<'b>) => option<'a>`  


### Option.applySecond
  
`let applySecond: (option<'a>, option<'b>) => option<'b>`  


### Option.all2
  
`let all2: (option<'a>, option<'b>) => option<('a, 'b)>`  


### Option.all3
  
`let all3: (option<'a>, option<'b>, option<'c>) => option<('a, 'b, 'c)>`  


### Option.all4
  
`let all4: (
  option<'a>,
  option<'b>,
  option<'c>,
  option<'d>,
) => option<('a, 'b, 'c, 'd)>`  


### Option.all5
  
`let all5: (
  option<'a>,
  option<'b>,
  option<'c>,
  option<'d>,
  option<'e>,
) => option<('a, 'b, 'c, 'd, 'e)>`  


### Option.all6
  
`let all6: (
  option<'a>,
  option<'b>,
  option<'c>,
  option<'d>,
  option<'e>,
  option<'f>,
) => option<('a, 'b, 'c, 'd, 'e, 'f)>`  


### Option.all
  
`let all: array<option<'a>> => option<array<'a>>`  


### Option.distribute2
  
`let distribute2: option<('a, 'b)> => (option<'a>, option<'b>)`  


### Option.distribute3
  
`let distribute3: option<('a, 'b, 'c)> => (option<'a>, option<'b>, option<'c>)`  


### Option.tap
  
`let tap: (option<'a>, 'a => unit) => option<'a>`  


### Option.tapNone
  
`let tapNone: (option<'a>, unit => unit) => option<'a>`  


### Option.invert
  
`let invert: (option<'a>, 'b) => option<'b>`  


### Option.predicate
  
`let predicate: ('v, 'v => bool) => option<'v>`  


### Option.guard
  
`let guard: (option<'a>, 'a => bool) => option<'a>`  


### Option.flap0
  
`let flap0: option<unit => 'b> => option<'b>`  


### Option.flap0_
  
`let flap0_: option<unit => 'b> => unit`  


### Option.flap1
  
`let flap1: (option<'a => 'b>, 'a) => option<'b>`  


### Option.flap1_
  
`let flap1_: (option<'a => 'b>, 'a) => unit`  


### Option.flap2
  
`let flap2: (option<('a, 'b) => 'c>, 'a, 'b) => option<'c>`  


### Option.flap2_
  
`let flap2_: (option<('a, 'b) => 'c>, 'a, 'b) => unit`  


### Option.flap3
  
`let flap3: (option<('a, 'b, 'c) => 'd>, 'a, 'b, 'c) => option<'d>`  


### Option.flap3_
  
`let flap3_: (option<('a, 'b, 'c) => 'd>, 'a, 'b, 'c) => unit`  


### Option.first
  
`let first: (option<'a>, option<'a>) => option<'a>`  


### Option.returnArray
  
`let returnArray: array<'a> => array<option<'a>>`  


### Option.log
  
`let log: (option<'a>, 'b) => option<'a>`  

invalid kind
# Promise




### Promise.t
  
`type t<'a> = Js.Promise.t<'a>`  


### Promise.error
  
`type error = Js.Promise.error`  


### Promise.void
  
`let void: t<'a> => unit`  


### Promise.make
  
`let make: (
  (~resolve: 'a => unit, ~reject: exn => unit) => unit,
) => promise<'a>`  


### Promise.return
  
`let return: 'v => t<'v>`  


### Promise.reject
  
`let reject: 'reason => t<'val>`  


### Promise.map
  
`let map: (t<'a>, 'a => 'b) => t<'b>`  


### Promise.const
  
`let const: (t<'x>, 'b) => t<'b>`  


### Promise.bind
  
`let bind: (t<'a>, 'a => t<'b>) => t<'b>`  


### Promise.join
  
`let join: t<t<'a>> => t<'a>`  


### Promise.tap
  
`let tap: (t<'a>, 'a => unit) => t<'a>`  


### Promise.tapBind
  
`let tapBind: (t<'a>, 'a => t<'b>) => t<'a>`  


### Promise.all2
  
`let all2: ((t<'a>, t<'b>)) => t<('a, 'b)>`  


### Promise.all3
  
`let all3: ((t<'a>, t<'b>, t<'c>)) => t<('a, 'b, 'c)>`  


### Promise.all4
  
`let all4: ((t<'a>, t<'b>, t<'c>, t<'d>)) => t<('a, 'b, 'c, 'd)>`  


### Promise.all5
  
`let all5: (
  (t<'a>, t<'b>, t<'c>, t<'d>, t<'e>),
) => t<('a, 'b, 'c, 'd, 'e)>`  


### Promise.catch
  
`let catch: (t<'a>, 'error => t<'b>) => t<'b>`  


### Promise.finally
  
`let finally: (t<'a>, unit => unit) => t<'a>`  


### Promise.finallyVoid
  
`let finallyVoid: (t<'a>, 'a => unit) => unit`  


### Promise.sequence
  
`let sequence: (array<'a>, 'a => t<'b>) => t<array<'b>>`  


### Promise.errorToExn
  
`let errorToExn: Js.Promise.error => exn`  


### Promise.errorToJsObj
  
`let errorToJsObj: Js.Promise.error => 'a`  


### Promise.toResult
  
`let toResult: t<'a> => t<result<'b, string>>`  


### Promise.sleep
  
`let sleep: int => promise<string>`  


### Promise.delay
  
`let delay: (~ms: int, t<'a>) => t<'a>`  

# PromiseResult




### PromiseResult.result
  
`type result<'ok, 'err> = Result.t<'ok, 'err>`  


### PromiseResult.t
  
`type t<'ok, 'err> = Promise.t<result<'ok, 'err>>`  


### PromiseResult.map
  
`let map: (t<'o, 'e>, 'o => 'or) => Promise.t<result<'or, 'e>>`  


### PromiseResult.bind
  
`let bind: (t<'o, 'e>, 'o => t<'or, 'e>) => Promise.t<result<'or, 'e>>`  


### PromiseResult.tap
  
`let tap: (t<'o, 'e>, 'o => unit) => Promise.t<result<'o, 'e>>`  


### PromiseResult.tapBind
  
`let tapBind: (t<'o, 'e>, 'o => t<'a, 'b>) => Promise.t<result<'o, 'e>>`  


### PromiseResult.lift
  
`let lift: Promise.t<'a> => t<'a, 'err>`  

# Regex




### Regex.t
  
`type t = Js.Re.t`  


### Regex.result
  
`type result = Js.Re.result`  


### Regex.groups
  
`let groups: Js.Re.result => option<Dict.t<Null.t<string>>>`  


### Regex.exec_
  
`let exec_: (Js.Re.t, string) => option<Js.Re.result>`  


### Regex.fromString
  
`let fromString: string => Js.Re.t`  


### Regex.captures
  
`let captures: Js.Re.result => array<Js.nullable<string>>`  


### Regex.test_
  
`let test_: (Js.Re.t, string) => bool`  

# Result




### Result.t
  
`type t<'a, 'b> = Belt_Result.t<'a, 'b> = Ok('a) | Error('b)`  


### Result.getExn
  
`let getExn: t<'a, 'b> => 'a`  


### Result.mapWithDefaultU
  
`let mapWithDefaultU: (t<'a, 'c>, 'b, 'a => 'b) => 'b`  


### Result.mapWithDefault
  
`let mapWithDefault: (t<'a, 'c>, 'b, 'a => 'b) => 'b`  


### Result.mapU
  
`let mapU: (t<'a, 'c>, 'a => 'b) => t<'b, 'c>`  


### Result.map
  
`let map: (t<'a, 'c>, 'a => 'b) => t<'b, 'c>`  


### Result.flatMapU
  
`let flatMapU: (t<'a, 'c>, 'a => t<'b, 'c>) => t<'b, 'c>`  


### Result.flatMap
  
`let flatMap: (t<'a, 'c>, 'a => t<'b, 'c>) => t<'b, 'c>`  


### Result.getWithDefault
  
`let getWithDefault: (t<'a, 'b>, 'a) => 'a`  


### Result.isOk
  
`let isOk: t<'a, 'b> => bool`  


### Result.isError
  
`let isError: t<'a, 'b> => bool`  


### Result.eqU
  
`let eqU: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => bool) => bool`  


### Result.eq
  
`let eq: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => bool) => bool`  


### Result.cmpU
  
`let cmpU: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => int) => int`  


### Result.cmp
  
`let cmp: (t<'a, 'c>, t<'b, 'd>, ('a, 'b) => int) => int`  


### Result.ok
  
`let ok: 'a => t<'a, 'b>`  


### Result.error
  
`let error: 'a => t<'b, 'a>`  


### Result.void
  
`let void: t<'a, 'e> => unit`  


### Result.return
  
`let return: 'a => t<'a, 'b>`  


### Result.isOk
  
`let isOk: t<'ok, 'err> => bool`  


### Result.isError
  
`let isError: t<'ok, 'err> => bool`  


### Result.fromOption
  
`let fromOption: (option<'a>, 'b) => t<'a, 'b>`  


### Result.fromOptionError
  
`let fromOptionError: option<'a> => t<unit, 'a>`  


### Result.toOption
  
`let toOption: result<'ok, 'err> => option<'ok>`  


### Result.getWithDefault
  
`let getWithDefault: (result<'ok, 'err>, 'ok) => 'ok`  


### Result.resolve
  
`let resolve: (result<'ok, 'err>, ~ok: 'ok => 'b, ~err: 'err => 'b) => 'b`  


### Result.first
  
`let first: (result<'ok, 'err>, result<'ok, 'err>) => result<'ok, 'err>`  


### Result.invert
  
`let invert: t<'a, 'b> => t<'b, 'a>`  


### Result.predicate
  
`let predicate: (bool, 'v, 'err) => t<'v, 'err>`  


### Result.toOptionError
  
`let toOptionError: result<'ok, 'err> => option<'err>`  


### Result.bind
  
`let bind: (t<'a, 'b>, 'a => t<'c, 'b>) => t<'c, 'b>`  


### Result.guard
  
`let guard: (t<'ok, 'error>, 'ok => bool, 'error) => t<'ok, 'error>`  


### Result.guardOpt
  
`let guardOpt: (t<'ok, 'error>, 'ok => option<'error>) => t<'ok, 'error>`  


### Result.map
  
`let map: (t<'ok, 'error>, 'ok => 'ox) => t<'ox, 'error>`  


### Result.const
  
`let const: (t<'ok, 'error>, 'const) => t<'const, 'error>`  


### Result.tap
  
`let tap: (t<'ok, 'error>, t<'ok, 'error> => unit) => t<'ok, 'error>`  


### Result.forEach
  
`let forEach: (t<'ok, 'error>, 'ok => unit) => unit`  


### Result.forEachError
  
`let forEachError: (t<'ok, 'error>, 'error => unit) => unit`  


### Result.map
  
`let map: (t<'ok, 'error>, 'ok => 'ox) => t<'ox, 'error>`  


### Result.mapError
  
`let mapError: (t<'ok, 'error>, 'error => 'ex) => t<'ok, 'ex>`  


### Result.bimap
  
`let bimap: (
  t<'ok, 'error>,
  'ok => 'ox,
  'error => 'errorx,
) => t<'ox, 'errorx>`  


### Result.tapOk
  
`let tapOk: (t<'ok, 'error>, 'ok => unit) => t<'ok, 'error>`  


### Result.tapError
  
`let tapError: (t<'ok, 'error>, 'error => unit) => t<'ok, 'error>`  


### Result.merge
  
`let merge: (
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  ~eempty: 'ecc,
  result<'acc, 'ecc>,
  t<'a, 'e>,
) => t<'acc, 'ecc>`  


### Result.apply
  
`let apply: (t<'a => 'b, 'c>, t<'a, 'c>) => t<'b, 'c>`  


### Result.sequence
  
`let sequence: (
  ~aempty: 'acc,
  ~eempty: 'ecc,
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  array<t<'a, 'e>>,
) => t<'acc, 'ecc>`  


### Result.traverse
  
`let traverse: (
  ~aempty: 'acc,
  ~eempty: 'ecc,
  ~consa: ('acc, 'a) => 'acc,
  ~conse: ('ecc, 'e) => 'ecc,
  array<'b>,
  'b => t<'a, 'e>,
) => t<'acc, 'ecc>`  


### Result.allArray
  
`let allArray: array<t<'a, 'e>> => t<array<'a>, 'e>`  


### Result.all2
  
`let all2: (t<'a, 'err>, t<'b, 'err>) => t<('a, 'b), 'err>`  


### Result.all3
  
`let all3: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
) => t<('a, 'b, 'c), 'err>`  


### Result.all4
  
`let all4: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
  t<'d, 'err>,
) => t<('a, 'b, 'c, 'd), 'err>`  


### Result.all5
  
`let all5: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
  t<'d, 'err>,
  t<'e, 'err>,
) => t<('a, 'b, 'c, 'd, 'e), 'err>`  


### Result.all6
  
`let all6: (
  t<'a, 'err>,
  t<'b, 'err>,
  t<'c, 'err>,
  t<'d, 'err>,
  t<'e, 'err>,
  t<'f, 'err>,
) => t<('a, 'b, 'c, 'd, 'e, 'f), 'err>`  


### Result.all
  
`let all: array<t<'a, 'err>> => t<array<'a>, 'err>`  

# String




### String.splitAt
  
`let splitAt: (string, int) => (Js.String2.t, Js.String2.t)`  


### String.capitalize
  
`let capitalize: string => string`  


### String.compare
  
`let compare: (string, string) => int`  


### String.shortenLargeString
  
`let shortenLargeString: (Js.String2.t, ~max: int=?, unit) => Js.String2.t`  


### String.prettyOptions
  
`let prettyOptions: array<string> => string`  


### String.getRandomString
  
`let getRandomString: unit => string`  


### String.makeUniq
  
`let makeUniq: (string, string) => string`  


### String.splitByComma
  
`let splitByComma: string => array<Js.String2.t>`  


### String.stringToId
  
`let stringToId: string => string`  


### String.includes
  
`let includes: (Js.String2.t, Js.String2.t) => bool`  


### String.split
  
`let split: (Js.String2.t, Js.String2.t) => array<Js.String2.t>`  


### String.concat
  
`let concat: (Js.String2.t, Js.String2.t) => Js.String2.t`  


### String.replaceByRe
  
`let replaceByRe: (Js.String2.t, Js_re.t, Js.String2.t) => Js.String2.t`  


### String.endsWith
  
`let endsWith: (Js.String2.t, Js.String2.t) => bool`  


### String.concatMany
  
`let concatMany: (Js.String2.t, array<Js.String2.t>) => Js.String2.t`  


### String.toLowerCase
  
`let toLowerCase: Js.String2.t => Js.String2.t`  


### String.toUpperCase
  
`let toUpperCase: Js.String2.t => Js.String2.t`  


### String.length
  
`let length: Js.String2.t => int`  


### String.make
  
`let make: 'a => Js.String2.t`  


### String.replace
  
`let replace: (Js.String2.t, Js.String2.t, Js.String2.t) => Js.String2.t`  


### String.match_
  
`let match_: (
  Js.String2.t,
  Js_re.t,
) => option<array<option<Js.String2.t>>>`  


### String.charAt
  
`let charAt: (Js.String2.t, int) => Js.String2.t`  


### String.slice
  
`let slice: (Js.String2.t, ~from: int, ~to_: int) => Js.String2.t`  


### String.trim
  
`let trim: Js.String2.t => Js.String2.t`  


### String.get
  
`let get: (Js.String2.t, int) => Js.String2.t`  


### String.startsWith
  
`let startsWith: (Js.String2.t, Js.String2.t) => bool`  


### String.sliceToEnd
  
`let sliceToEnd: (Js.String2.t, ~from: int) => Js.String2.t`  


### String.indexOf
  
`let indexOf: (Js.String2.t, Js.String2.t) => int`  

# Tap




### Tap.tap
  
`let tap: ('a, 'a => unit) => 'a`  

# Timeout




### Timeout.set
  
`let set: (unit => unit, int) => Js.Global.timeoutId`  


### Timeout.clear
  
`let clear: Js.Global.timeoutId => unit`  

# Tuple




### Tuple.fst2
  
`let fst2: (('a, 'b)) => 'a`  


### Tuple.snd2
  
`let snd2: (('a, 'b)) => 'b`  


### Tuple.mapl2
  
`let mapl2: (~f: 'a => 'b, ('a, 'c)) => ('b, 'c)`  


### Tuple.mapr2
  
`let mapr2: (~f: 'a => 'b, ('c, 'a)) => ('c, 'b)`  


### Tuple.t2
  
`type t2<'a, 'z> = ('a, 'z)`  


### Tuple.t3
  
`type t3<'a, 'b, 'z> = ('a, 'b, 'z)`  


### Tuple.t4
  
`type t4<'a, 'b, 'c, 'z> = ('a, 'b, 'c, 'z)`  


### Tuple.t5
  
`type t5<'a, 'b, 'c, 'd, 'z> = ('a, 'b, 'c, 'd, 'z)`  


### Tuple.t6
  
`type t6<'a, 'b, 'c, 'd, 'e, 'z> = ('a, 'b, 'c, 'd, 'e, 'z)`  


### Tuple.t7
  
`type t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'z,
)`  


### Tuple.t8
  
`type t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  'z,
)`  


### Tuple.tuple1
  
`type tuple1<'a> = t2<'a, unit>`  


### Tuple.tuple2
  
`type tuple2<'a, 'b> = t3<'a, 'b, unit>`  


### Tuple.tuple3
  
`type tuple3<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>`  


### Tuple.tuple4
  
`type tuple4<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>`  


### Tuple.tuple5
  
`type tuple5<'a, 'b, 'c, 'd, 'e> = t6<
  'a,
  'b,
  'c,
  'd,
  'e,
  unit,
>`  


### Tuple.tuple6
  
`type tuple6<'a, 'b, 'c, 'd, 'e, 'f> = t7<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  unit,
>`  


### Tuple.tuple7
  
`type tuple7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = t8<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  unit,
>`  


### Tuple.return2
  
`let return2: 'a => ('a, 'a)`  


### Tuple.return3
  
`let return3: 'a => ('a, 'a, 'a)`  


### Tuple.return4
  
`let return4: 'a => ('a, 'a, 'a, 'a)`  


### Tuple.return5
  
`let return5: 'a => ('a, 'a, 'a, 'a, 'a)`  


### Tuple.return6
  
`let return6: 'a => ('a, 'a, 'a, 'a, 'a, 'a)`  


### Tuple.return7
  
`let return7: 'a => ('a, 'a, 'a, 'a, 'a, 'a, 'a)`  


### Tuple.curry2
  
`let curry2: ((('a, 'b)) => 'c, 'a, 'b) => 'c`  


### Tuple.curry3
  
`let curry3: ((('a, 'b, 'c)) => 'd, 'a, 'b, 'c) => 'd`  


### Tuple.curry4
  
`let curry4: ((('a, 'b, 'c, 'd)) => 'e, 'a, 'b, 'c, 'd) => 'e`  


### Tuple.curry5
  
`let curry5: ((('a, 'b, 'c, 'd, 'e)) => 'f, 'a, 'b, 'c, 'd, 'e) => 'f`  


### Tuple.curry6
  
`let curry6: (
  (('a, 'b, 'c, 'd, 'e, 'f)) => 'g,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
) => 'g`  


### Tuple.curry7
  
`let curry7: (
  (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'h,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
) => 'h`  


### Tuple.uncurry2
  
`let uncurry2: (('a, 'b) => 'c, ('a, 'b)) => 'c`  


### Tuple.uncurry3
  
`let uncurry3: (('a, 'b, 'c) => 'd, ('a, 'b, 'c)) => 'd`  


### Tuple.uncurry4
  
`let uncurry4: (('a, 'b, 'c, 'd) => 'e, ('a, 'b, 'c, 'd)) => 'e`  


### Tuple.uncurry5
  
`let uncurry5: (('a, 'b, 'c, 'd, 'e) => 'f, ('a, 'b, 'c, 'd, 'e)) => 'f`  


### Tuple.uncurry6
  
`let uncurry6: (
  ('a, 'b, 'c, 'd, 'e, 'f) => 'g,
  ('a, 'b, 'c, 'd, 'e, 'f),
) => 'g`  


### Tuple.uncurry7
  
`let uncurry7: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'h,
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => 'h`  


### Tuple.toList2
  
`let toList2: (('a, 'a)) => array<'a>`  


### Tuple.toList3
  
`let toList3: (('a, 'a, 'a)) => array<'a>`  


### Tuple.toList4
  
`let toList4: (('a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.toList5
  
`let toList5: (('a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.toList6
  
`let toList6: (('a, 'a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.toList7
  
`let toList7: (('a, 'a, 'a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.napply2
  
`let napply2: (('a => 'b, 'c => 'd), ('a, 'c)) => ('b, 'd)`  


### Tuple.napply3
  
`let napply3: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('a, 'c, 'e),
) => ('b, 'd, 'f)`  


### Tuple.napply4
  
`let napply4: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('a, 'c, 'e, 'g),
) => ('b, 'd, 'f, 'h)`  


### Tuple.napply5
  
`let napply5: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('a, 'c, 'e, 'g, 'i),
) => ('b, 'd, 'f, 'h, 'j)`  


### Tuple.napply6
  
`let napply6: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
  ),
  ('a, 'c, 'e, 'g, 'i, 'k),
) => ('b, 'd, 'f, 'h, 'j, 'l)`  


### Tuple.napply7
  
`let napply7: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
    'm => 'n,
  ),
  ('a, 'c, 'e, 'g, 'i, 'k, 'm),
) => ('b, 'd, 'f, 'h, 'j, 'l, 'n)`  


### Tuple.ncompose2
  
`let ncompose2: (
  ('a => 'b, 'c => 'd),
  ('e => 'a, 'f => 'c),
  'e,
) => ('b, 'f => 'd)`  


### Tuple.ncompose3
  
`let ncompose3: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('g => 'a, 'h => 'c, 'i => 'e),
  'g,
) => ('b, 'h => 'd, 'i => 'f)`  


### Tuple.ncompose4
  
`let ncompose4: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('i => 'a, 'j => 'c, 'k => 'e, 'l => 'g),
  'i,
) => ('b, 'j => 'd, 'k => 'f, 'l => 'h)`  


### Tuple.ncompose5
  
`let ncompose5: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('k => 'a, 'l => 'c, 'm => 'e, 'n => 'g, 'o => 'i),
  'k,
) => ('b, 'l => 'd, 'm => 'f, 'n => 'h, 'o => 'j)`  


### Tuple.ncompose6
  
`let ncompose6: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
  ),
  (
    'm => 'a,
    'n => 'c,
    'o => 'e,
    'p => 'g,
    'q => 'i,
    'r => 'k,
  ),
  'm,
) => ('b, 'n => 'd, 'o => 'f, 'p => 'h, 'q => 'j, 'r => 'l)`  


### Tuple.ncompose7
  
`let ncompose7: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
    'm => 'n,
  ),
  (
    'o => 'a,
    'p => 'c,
    'q => 'e,
    'r => 'g,
    's => 'i,
    't => 'k,
    'u => 'm,
  ),
  'o,
) => (
  'b,
  'p => 'd,
  'q => 'f,
  'r => 'h,
  's => 'j,
  't => 'l,
  'u => 'n,
)`  


### Tuple.reverse2
  
`let reverse2: (('a, 'b)) => ('b, 'a)`  


### Tuple.reverse3
  
`let reverse3: (('a, 'b, 'c)) => ('c, 'b, 'a)`  


### Tuple.reverse4
  
`let reverse4: (('a, 'b, 'c, 'd)) => ('d, 'c, 'b, 'a)`  


### Tuple.reverse5
  
`let reverse5: (('a, 'b, 'c, 'd, 'e)) => ('e, 'd, 'c, 'b, 'a)`  


### Tuple.reverse6
  
`let reverse6: (('a, 'b, 'c, 'd, 'e, 'f)) => ('f, 'e, 'd, 'c, 'b, 'a)`  


### Tuple.reverse7
  
`let reverse7: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => ('g, 'f, 'e, 'd, 'c, 'b, 'a)`  


### Tuple.mono
  
`let mono: (('a, 'b) => 'c, 'c => 'd, 'a, 'b) => 'd`  


### Tuple.all
  
`let all: (('a, 'b) => 'c, 'c => Array.t<bool>, 'a, 'b) => bool`  


### Tuple.some
  
`let some: (('a, 'b) => 'c, 'c => Array.t<bool>, 'a, 'b) => bool`  


### Tuple.Tuple2
  
  
### Tuple.Tuple2.t
  
`type t<'a, 'b> = ('a, 'b)`  


### Tuple.Tuple2.make
  
`let make: ('a, 'b) => ('a, 'b)`  


### Tuple.Tuple2.uncurry
  
`let uncurry: (('a, 'b) => 'c, ('a, 'b)) => 'c`  


### Tuple.Tuple2.curry
  
`let curry: ((('a, 'b)) => 'c, 'a, 'b) => 'c`  


### Tuple.Tuple2.return
  
`let return: 'a => ('a, 'a)`  


### Tuple.Tuple2.toList
  
`let toList: (('a, 'a)) => array<'a>`  


### Tuple.Tuple2.napply
  
`let napply: (('a => 'b, 'c => 'd), ('a, 'c)) => ('b, 'd)`  


### Tuple.Tuple2.ncompose
  
`let ncompose: (
  ('a => 'b, 'c => 'd),
  ('e => 'a, 'f => 'c),
  'e,
) => ('b, 'f => 'd)`  


### Tuple.Tuple2.show
  
`let show: ((string, string)) => string`  


### Tuple.Tuple2.mono
  
`let mono: (('a => 'b, 'c => 'b), ('a, 'c)) => array<'b>`  


### Tuple.Tuple2.all
  
`let all: (('a => bool, 'b => bool), ('a, 'b)) => bool`  


### Tuple.Tuple2.some
  
`let some: (('a => bool, 'b => bool), ('a, 'b)) => bool`  


### Tuple.Tuple2.get1
  
`let get1: (('a, 'b)) => 'a`  


### Tuple.Tuple2.get2
  
`let get2: (('a, 'b)) => 'b`  


### Tuple.Tuple3
  
  
### Tuple.Tuple3.t
  
`type t<'a, 'b, 'c> = ('a, 'b, 'c)`  


### Tuple.Tuple3.make
  
`let make: ('a, 'b, 'c) => ('a, 'b, 'c)`  


### Tuple.Tuple3.uncurry
  
`let uncurry: (('a, 'b, 'c) => 'd, ('a, 'b, 'c)) => 'd`  


### Tuple.Tuple3.curry
  
`let curry: ((('a, 'b, 'c)) => 'd, 'a, 'b, 'c) => 'd`  


### Tuple.Tuple3.return
  
`let return: 'a => ('a, 'a, 'a)`  


### Tuple.Tuple3.toList
  
`let toList: (('a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple3.napply
  
`let napply: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('a, 'c, 'e),
) => ('b, 'd, 'f)`  


### Tuple.Tuple3.ncompose
  
`let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f),
  ('g => 'a, 'h => 'c, 'i => 'e),
  'g,
) => ('b, 'h => 'd, 'i => 'f)`  


### Tuple.Tuple3.show
  
`let show: ((string, string, string)) => string`  


### Tuple.Tuple3.mono
  
`let mono: (('a => 'b, 'c => 'b, 'd => 'b), ('a, 'c, 'd)) => array<'b>`  


### Tuple.Tuple3.all
  
`let all: (('a => bool, 'b => bool, 'c => bool), ('a, 'b, 'c)) => bool`  


### Tuple.Tuple3.some
  
`let some: (('a => bool, 'b => bool, 'c => bool), ('a, 'b, 'c)) => bool`  


### Tuple.Tuple3.get1
  
`let get1: (('a, 'b, 'c)) => 'a`  


### Tuple.Tuple3.get2
  
`let get2: (('a, 'b, 'c)) => 'b`  


### Tuple.Tuple3.get3
  
`let get3: (('a, 'b, 'c)) => 'c`  


### Tuple.Tuple4
  
  
### Tuple.Tuple4.t
  
`type t<'a, 'b, 'c, 'd> = ('a, 'b, 'c, 'd)`  


### Tuple.Tuple4.make
  
`let make: ('a, 'b, 'c, 'd) => ('a, 'b, 'c, 'd)`  


### Tuple.Tuple4.uncurry
  
`let uncurry: (('a, 'b, 'c, 'd) => 'e, ('a, 'b, 'c, 'd)) => 'e`  


### Tuple.Tuple4.curry
  
`let curry: ((('a, 'b, 'c, 'd)) => 'e, 'a, 'b, 'c, 'd) => 'e`  


### Tuple.Tuple4.return
  
`let return: 'a => ('a, 'a, 'a, 'a)`  


### Tuple.Tuple4.toList
  
`let toList: (('a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple4.napply
  
`let napply: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('a, 'c, 'e, 'g),
) => ('b, 'd, 'f, 'h)`  


### Tuple.Tuple4.ncompose
  
`let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h),
  ('i => 'a, 'j => 'c, 'k => 'e, 'l => 'g),
  'i,
) => ('b, 'j => 'd, 'k => 'f, 'l => 'h)`  


### Tuple.Tuple4.show
  
`let show: ((string, string, string, string)) => string`  


### Tuple.Tuple4.mono
  
`let mono: (
  ('a => 'b, 'c => 'b, 'd => 'b, 'e => 'b),
  ('a, 'c, 'd, 'e),
) => array<'b>`  


### Tuple.Tuple4.all
  
`let all: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool),
  ('a, 'b, 'c, 'd),
) => bool`  


### Tuple.Tuple4.some
  
`let some: (
  ('a => bool, 'b => bool, 'c => bool, 'd => bool),
  ('a, 'b, 'c, 'd),
) => bool`  


### Tuple.Tuple4.get1
  
`let get1: (('a, 'b, 'c, 'd)) => 'a`  


### Tuple.Tuple4.get2
  
`let get2: (('a, 'b, 'c, 'd)) => 'b`  


### Tuple.Tuple4.get3
  
`let get3: (('a, 'b, 'c, 'd)) => 'c`  


### Tuple.Tuple4.get4
  
`let get4: (('a, 'b, 'c, 'd)) => 'd`  


### Tuple.Tuple5
  
  
### Tuple.Tuple5.t
  
`type t<'a, 'b, 'c, 'd, 'e> = ('a, 'b, 'c, 'd, 'e)`  


### Tuple.Tuple5.make
  
`let make: ('a, 'b, 'c, 'd, 'e) => ('a, 'b, 'c, 'd, 'e)`  


### Tuple.Tuple5.uncurry
  
`let uncurry: (('a, 'b, 'c, 'd, 'e) => 'f, ('a, 'b, 'c, 'd, 'e)) => 'f`  


### Tuple.Tuple5.curry
  
`let curry: ((('a, 'b, 'c, 'd, 'e)) => 'f, 'a, 'b, 'c, 'd, 'e) => 'f`  


### Tuple.Tuple5.return
  
`let return: 'a => ('a, 'a, 'a, 'a, 'a)`  


### Tuple.Tuple5.toList
  
`let toList: (('a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple5.napply
  
`let napply: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('a, 'c, 'e, 'g, 'i),
) => ('b, 'd, 'f, 'h, 'j)`  


### Tuple.Tuple5.ncompose
  
`let ncompose: (
  ('a => 'b, 'c => 'd, 'e => 'f, 'g => 'h, 'i => 'j),
  ('k => 'a, 'l => 'c, 'm => 'e, 'n => 'g, 'o => 'i),
  'k,
) => ('b, 'l => 'd, 'm => 'f, 'n => 'h, 'o => 'j)`  


### Tuple.Tuple5.show
  
`let show: ((string, string, string, string, string)) => string`  


### Tuple.Tuple5.mono
  
`let mono: (
  ('a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b),
  ('a, 'c, 'd, 'e, 'f),
) => array<'b>`  


### Tuple.Tuple5.all
  
`let all: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
  ),
  ('a, 'b, 'c, 'd, 'e),
) => bool`  


### Tuple.Tuple5.some
  
`let some: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
  ),
  ('a, 'b, 'c, 'd, 'e),
) => bool`  


### Tuple.Tuple5.get1
  
`let get1: (('a, 'b, 'c, 'd, 'e)) => 'a`  


### Tuple.Tuple5.get2
  
`let get2: (('a, 'b, 'c, 'd, 'e)) => 'b`  


### Tuple.Tuple5.get3
  
`let get3: (('a, 'b, 'c, 'd, 'e)) => 'c`  


### Tuple.Tuple5.get4
  
`let get4: (('a, 'b, 'c, 'd, 'e)) => 'd`  


### Tuple.Tuple5.get5
  
`let get5: (('a, 'b, 'c, 'd, 'e)) => 'e`  


### Tuple.Tuple6
  
  
### Tuple.Tuple6.t
  
`type t<'a, 'b, 'c, 'd, 'e, 'f> = ('a, 'b, 'c, 'd, 'e, 'f)`  


### Tuple.Tuple6.make
  
`let make: ('a, 'b, 'c, 'd, 'e, 'f) => ('a, 'b, 'c, 'd, 'e, 'f)`  


### Tuple.Tuple6.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e, 'f) => 'g,
  ('a, 'b, 'c, 'd, 'e, 'f),
) => 'g`  


### Tuple.Tuple6.curry
  
`let curry: (
  (('a, 'b, 'c, 'd, 'e, 'f)) => 'g,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
) => 'g`  


### Tuple.Tuple6.return
  
`let return: 'a => ('a, 'a, 'a, 'a, 'a, 'a)`  


### Tuple.Tuple6.toList
  
`let toList: (('a, 'a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple6.napply
  
`let napply: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
  ),
  ('a, 'c, 'e, 'g, 'i, 'k),
) => ('b, 'd, 'f, 'h, 'j, 'l)`  


### Tuple.Tuple6.ncompose
  
`let ncompose: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
  ),
  (
    'm => 'a,
    'n => 'c,
    'o => 'e,
    'p => 'g,
    'q => 'i,
    'r => 'k,
  ),
  'm,
) => ('b, 'n => 'd, 'o => 'f, 'p => 'h, 'q => 'j, 'r => 'l)`  


### Tuple.Tuple6.show
  
`let show: ((string, string, string, string, string, string)) => string`  


### Tuple.Tuple6.mono
  
`let mono: (
  (
    'a => 'b,
    'c => 'b,
    'd => 'b,
    'e => 'b,
    'f => 'b,
    'g => 'b,
  ),
  ('a, 'c, 'd, 'e, 'f, 'g),
) => array<'b>`  


### Tuple.Tuple6.all
  
`let all: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
  ),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => bool`  


### Tuple.Tuple6.some
  
`let some: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
  ),
  ('a, 'b, 'c, 'd, 'e, 'f),
) => bool`  


### Tuple.Tuple6.get1
  
`let get1: (('a, 'b, 'c, 'd, 'e, 'f)) => 'a`  


### Tuple.Tuple6.get2
  
`let get2: (('a, 'b, 'c, 'd, 'e, 'f)) => 'b`  


### Tuple.Tuple6.get3
  
`let get3: (('a, 'b, 'c, 'd, 'e, 'f)) => 'c`  


### Tuple.Tuple6.get4
  
`let get4: (('a, 'b, 'c, 'd, 'e, 'f)) => 'd`  


### Tuple.Tuple6.get5
  
`let get5: (('a, 'b, 'c, 'd, 'e, 'f)) => 'e`  


### Tuple.Tuple6.get6
  
`let get6: (('a, 'b, 'c, 'd, 'e, 'f)) => 'f`  


### Tuple.Tuple7
  
  
### Tuple.Tuple7.t
  
`type t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
)`  


### Tuple.Tuple7.make
  
`let make: ('a, 'b, 'c, 'd, 'e, 'f, 'g) => ('a, 'b, 'c, 'd, 'e, 'f, 'g)`  


### Tuple.Tuple7.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'h,
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => 'h`  


### Tuple.Tuple7.curry
  
`let curry: (
  (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'h,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
) => 'h`  


### Tuple.Tuple7.return
  
`let return: 'a => ('a, 'a, 'a, 'a, 'a, 'a, 'a)`  


### Tuple.Tuple7.toList
  
`let toList: (('a, 'a, 'a, 'a, 'a, 'a, 'a)) => array<'a>`  


### Tuple.Tuple7.napply
  
`let napply: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
    'm => 'n,
  ),
  ('a, 'c, 'e, 'g, 'i, 'k, 'm),
) => ('b, 'd, 'f, 'h, 'j, 'l, 'n)`  


### Tuple.Tuple7.ncompose
  
`let ncompose: (
  (
    'a => 'b,
    'c => 'd,
    'e => 'f,
    'g => 'h,
    'i => 'j,
    'k => 'l,
    'm => 'n,
  ),
  (
    'o => 'a,
    'p => 'c,
    'q => 'e,
    'r => 'g,
    's => 'i,
    't => 'k,
    'u => 'm,
  ),
  'o,
) => (
  'b,
  'p => 'd,
  'q => 'f,
  'r => 'h,
  's => 'j,
  't => 'l,
  'u => 'n,
)`  


### Tuple.Tuple7.show
  
`let show: (
  (string, string, string, string, string, string, string),
) => string`  


### Tuple.Tuple7.mono
  
`let mono: (
  (
    'a => 'b,
    'c => 'b,
    'd => 'b,
    'e => 'b,
    'f => 'b,
    'g => 'b,
    'h => 'b,
  ),
  ('a, 'c, 'd, 'e, 'f, 'g, 'h),
) => array<'b>`  


### Tuple.Tuple7.all
  
`let all: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
    'g => bool,
  ),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => bool`  


### Tuple.Tuple7.some
  
`let some: (
  (
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
    'g => bool,
  ),
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => bool`  


### Tuple.Tuple7.get1
  
`let get1: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'a`  


### Tuple.Tuple7.get2
  
`let get2: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'b`  


### Tuple.Tuple7.get3
  
`let get3: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'c`  


### Tuple.Tuple7.get4
  
`let get4: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'd`  


### Tuple.Tuple7.get5
  
`let get5: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'e`  


### Tuple.Tuple7.get6
  
`let get6: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'f`  


### Tuple.Tuple7.get7
  
`let get7: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => 'g`  


### Tuple.Nested
  
  
### Tuple.Nested.t
  
`type t<'a, 'z> = ('a, 'z)`  


### Tuple.Nested.t2
  
`type t2<'a, 'z> = t<'a, 'z>`  


### Tuple.Nested.t3
  
`type t3<'a, 'b, 'z> = t<'a, t2<'b, 'z>>`  


### Tuple.Nested.t4
  
`type t4<'a, 'b, 'c, 'z> = t<'a, t3<'b, 'c, 'z>>`  


### Tuple.Nested.t5
  
`type t5<'a, 'b, 'c, 'd, 'z> = t<'a, t4<'b, 'c, 'd, 'z>>`  


### Tuple.Nested.t6
  
`type t6<'a, 'b, 'c, 'd, 'e, 'z> = t<
  'a,
  t5<'b, 'c, 'd, 'e, 'z>,
>`  


### Tuple.Nested.t7
  
`type t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = t<
  'a,
  t6<'b, 'c, 'd, 'e, 'f, 'z>,
>`  


### Tuple.Nested.t8
  
`type t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = t<
  'a,
  t7<'b, 'c, 'd, 'e, 'f, 'g, 'z>,
>`  


### Tuple.Nested.t9
  
`type t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z> = t<
  'a,
  t8<'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z>,
>`  


### Tuple.Nested.t2
  
`let t2: ('a, 'z) => t2<'a, 'z>`  


### Tuple.Nested.t3
  
`let t3: ('a, 'b, 'z) => t3<'a, 'b, 'z>`  


### Tuple.Nested.t4
  
`let t4: ('a, 'b, 'c, 'z) => t4<'a, 'b, 'c, 'z>`  


### Tuple.Nested.t5
  
`let t5: ('a, 'b, 'c, 'd, 'z) => t5<'a, 'b, 'c, 'd, 'z>`  


### Tuple.Nested.t6
  
`let t6: ('a, 'b, 'c, 'd, 'e, 'z) => t6<'a, 'b, 'c, 'd, 'e, 'z>`  


### Tuple.Nested.t7
  
`let t7: (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'z,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>`  


### Tuple.Nested.t8
  
`let t8: (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  'z,
) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>`  


### Tuple.Nested.t9
  
`let t9: (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  'h,
  'z,
) => t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z>`  


### Tuple.Nested.tuple1
  
`type tuple1<'a> = t2<'a, unit>`  


### Tuple.Nested.tuple2
  
`type tuple2<'a, 'b> = t3<'a, 'b, unit>`  


### Tuple.Nested.tuple3
  
`type tuple3<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>`  


### Tuple.Nested.tuple4
  
`type tuple4<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>`  


### Tuple.Nested.tuple5
  
`type tuple5<'a, 'b, 'c, 'd, 'e> = t6<
  'a,
  'b,
  'c,
  'd,
  'e,
  unit,
>`  


### Tuple.Nested.tuple6
  
`type tuple6<'a, 'b, 'c, 'd, 'e, 'f> = t7<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  unit,
>`  


### Tuple.Nested.tuple7
  
`type tuple7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = t8<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  unit,
>`  


### Tuple.Nested.tuple8
  
`type tuple8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h> = t9<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
  'h,
  unit,
>`  


### Tuple.Nested.rest
  
`let rest: t<'a, 'b> => 'b`  


### Tuple.Nested.get1
  
`let get1: t2<'a, 'z> => 'a`  


### Tuple.Nested.get2
  
`let get2: t3<'a, 'b, 'z> => 'b`  


### Tuple.Nested.get3
  
`let get3: t4<'a, 'b, 'c, 'z> => 'c`  


### Tuple.Nested.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'z> => 'd`  


### Tuple.Nested.get5
  
`let get5: t6<'a, 'b, 'c, 'd, 'e, 'z> => 'e`  


### Tuple.Nested.get6
  
`let get6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'f`  


### Tuple.Nested.get7
  
`let get7: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'g`  


### Tuple.Nested.set1
  
`let set1: (t2<'a, 'z>, 'b) => t2<'b, 'z>`  


### Tuple.Nested.set2
  
`let set2: (t3<'a, 'b, 'z>, 'b) => t3<'a, 'b, 'z>`  


### Tuple.Nested.set3
  
`let set3: (t4<'a, 'b, 'c, 'z>, 'c) => t4<'a, 'b, 'c, 'z>`  


### Tuple.Nested.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'z>, 'd) => t5<'a, 'b, 'c, 'd, 'z>`  


### Tuple.Nested.set5
  
`let set5: (
  t6<'a, 'b, 'c, 'd, 'e, 'z>,
  'e,
) => t6<'a, 'b, 'c, 'd, 'e, 'z>`  


### Tuple.Nested.set6
  
`let set6: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>,
  'f,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>`  


### Tuple.Nested.set7
  
`let set7: (
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>,
  'g,
) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>`  


### Tuple.Nested.Tuple1
  
  
### Tuple.Nested.Tuple1.t
  
`type t<'a> = tuple1<'a>`  


### Tuple.Nested.Tuple1.units
  
`type units = t<unit>`  


### Tuple.Nested.Tuple1.make
  
`let make: 'a => t<'a>`  


### Tuple.Nested.Tuple1.units
  
`let units: t<unit>`  


### Tuple.Nested.Tuple1.over1
  
`let over1: ('a => 'r, t2<'a, 'z>) => t2<'r, 'z>`  


### Tuple.Nested.Tuple1.uncurry
  
`let uncurry: ('a => 'r, t2<'a, 'z>) => 'r`  


### Tuple.Nested.Tuple1.curry
  
`let curry: (t<'a> => 'r, 'a) => 'r`  


### Tuple.Nested.Tuple1.return
  
`let return: 'a => t<'a>`  


### Tuple.Nested.Tuple1.toList
  
`let toList: t<'a> => array<'a>`  


### Tuple.Nested.Tuple1.napply
  
`let napply: (t<'a => 'ao>, t<'a>) => t<'ao>`  


### Tuple.Nested.Tuple1.ncompose
  
`let ncompose: (t<'fa => 'fao>, t<'ga => 'fa>) => t<'ga => 'fao>`  


### Tuple.Nested.Tuple1.reverse
  
`let reverse: t<'a> => t<'a>`  


### Tuple.Nested.Tuple1.show
  
`let show: t<string> => string`  


### Tuple.Nested.Tuple1.encode
  
`let encode: 'a => ('a, unit)`  


### Tuple.Nested.Tuple1.decode
  
`let decode: (('a, 'b)) => 'a`  


### Tuple.Nested.Tuple1.mono
  
`let mono: (t<'a => 'b>, t<'a>) => array<'b>`  


### Tuple.Nested.Tuple1.all
  
`let all: (t<'a => bool>, t<'a>) => bool`  


### Tuple.Nested.Tuple1.some
  
`let some: (t<'a => bool>, t<'a>) => bool`  


### Tuple.Nested.Tuple1.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple1.get1
  
`let get1: t<'a> => 'a`  


### Tuple.Nested.Tuple2
  
  
### Tuple.Nested.Tuple2.t
  
`type t<'a, 'b> = t3<'a, 'b, unit>`  


### Tuple.Nested.Tuple2.make
  
`let make: ('a, 'b) => t<'a, 'b>`  


### Tuple.Nested.Tuple2.units
  
`type units = (unit, Tuple1.units)`  


### Tuple.Nested.Tuple2.units
  
`let units: (unit, Tuple1.t<unit>)`  


### Tuple.Nested.Tuple2.over
  
`let over: ('b => 'r, t3<'a, 'b, 'z>) => t3<'a, 'r, 'z>`  


### Tuple.Nested.Tuple2.uncurry
  
`let uncurry: (('a, 'b) => 'r, t3<'a, 'b, 'z>) => 'r`  


### Tuple.Nested.Tuple2.curry
  
`let curry: (t<'a, 'b> => 'r, 'a, 'b) => 'r`  


### Tuple.Nested.Tuple2.encode
  
`let encode: (('a, 'b)) => t<'a, 'b>`  


### Tuple.Nested.Tuple2.decode
  
`let decode: t<'a, 'b> => ('a, 'b)`  


### Tuple.Nested.Tuple2.return
  
`let return: 'a => t<'a, 'a>`  


### Tuple.Nested.Tuple2.toList
  
`let toList: t<'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple2.napply
  
`let napply: (t<'a => 'ao, 'b => 'bo>, t<'a, 'b>) => t<'ao, 'bo>`  


### Tuple.Nested.Tuple2.ncompose
  
`let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo>,
  t<'ga => 'fa, 'gb => 'fb>,
) => t<'ga => 'fao, 'gb => 'fbo>`  


### Tuple.Nested.Tuple2.reverse
  
`let reverse: t<'a, 'b> => t<'b, 'a>`  


### Tuple.Nested.Tuple2.show
  
`let show: t<string, string> => string`  


### Tuple.Nested.Tuple2.mono
  
`let mono: (t<'a => 'b, 'c => 'b>, t<'a, 'c>) => array<'b>`  


### Tuple.Nested.Tuple2.all
  
`let all: (t<'a => bool, 'b => bool>, t<'a, 'b>) => bool`  


### Tuple.Nested.Tuple2.some
  
`let some: (t<'a => bool, 'b => bool>, t<'a, 'b>) => bool`  


### Tuple.Nested.Tuple2.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple2.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple2.get1
  
`let get1: t<'a, 'b> => 'a`  


### Tuple.Nested.Tuple2.get2
  
`let get2: t<'a, 'b> => 'b`  


### Tuple.Nested.Tuple3
  
  
### Tuple.Nested.Tuple3.t
  
`type t<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>`  


### Tuple.Nested.Tuple3.make
  
`let make: ('a, 'b, 'c) => t<'a, 'b, 'c>`  


### Tuple.Nested.Tuple3.units
  
`type units = (unit, Tuple2.units)`  


### Tuple.Nested.Tuple3.units
  
`let units: (unit, (unit, Tuple1.t<unit>))`  


### Tuple.Nested.Tuple3.over
  
`let over: ('c => 'r, t4<'a, 'b, 'c, 'z>) => t4<'a, 'b, 'r, 'z>`  


### Tuple.Nested.Tuple3.uncurry
  
`let uncurry: (('a, 'b, 'c) => 'r, t4<'a, 'b, 'c, 'z>) => 'r`  


### Tuple.Nested.Tuple3.curry
  
`let curry: (t<'a, 'b, 'c> => 'r, 'a, 'b, 'c) => 'r`  


### Tuple.Nested.Tuple3.encode
  
`let encode: (('a, 'b, 'c)) => t<'a, 'b, 'c>`  


### Tuple.Nested.Tuple3.decode
  
`let decode: t<'a, 'b, 'c> => ('a, 'b, 'c)`  


### Tuple.Nested.Tuple3.return
  
`let return: 'a => t<'a, 'a, 'a>`  


### Tuple.Nested.Tuple3.toList
  
`let toList: t<'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple3.napply
  
`let napply: (
  t<'a => 'ao, 'b => 'bo, 'c => 'co>,
  t<'a, 'b, 'c>,
) => t<'ao, 'bo, 'co>`  


### Tuple.Nested.Tuple3.ncompose
  
`let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco>,
  t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc>,
) => t<'ga => 'fao, 'gb => 'fbo, 'gc => 'fco>`  


### Tuple.Nested.Tuple3.reverse
  
`let reverse: t<'a, 'b, 'c> => t<'c, 'b, 'a>`  


### Tuple.Nested.Tuple3.show
  
`let show: t<string, string, string> => string`  


### Tuple.Nested.Tuple3.mono
  
`let mono: (
  t<'a => 'b, 'c => 'b, 'd => 'b>,
  t<'a, 'c, 'd>,
) => array<'b>`  


### Tuple.Nested.Tuple3.all
  
`let all: (
  t<'a => bool, 'b => bool, 'c => bool>,
  t<'a, 'b, 'c>,
) => bool`  


### Tuple.Nested.Tuple3.some
  
`let some: (
  t<'a => bool, 'b => bool, 'c => bool>,
  t<'a, 'b, 'c>,
) => bool`  


### Tuple.Nested.Tuple3.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple3.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple3.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple3.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple3.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple3.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple4
  
  
### Tuple.Nested.Tuple4.t
  
`type t<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>`  


### Tuple.Nested.Tuple4.make
  
`let make: ('a, 'b, 'c, 'd) => t<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple4.units
  
`type units = (unit, Tuple3.units)`  


### Tuple.Nested.Tuple4.units
  
`let units: (unit, (unit, (unit, Tuple1.t<unit>)))`  


### Tuple.Nested.Tuple4.over
  
`let over: ('d => 'd, t5<'a, 'b, 'd, 'd, 'z>) => t5<'a, 'b, 'd, 'd, 'z>`  


### Tuple.Nested.Tuple4.uncurry
  
`let uncurry: (('a, 'b, 'c, 'd) => 'r, t5<'a, 'b, 'c, 'd, 'z>) => 'r`  


### Tuple.Nested.Tuple4.curry
  
`let curry: (t<'a, 'b, 'c, 'd> => 'r, 'a, 'b, 'c, 'd) => 'r`  


### Tuple.Nested.Tuple4.encode
  
`let encode: (('a, 'b, 'c, 'd)) => t<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple4.decode
  
`let decode: t<'a, 'b, 'c, 'd> => ('a, 'b, 'c, 'd)`  


### Tuple.Nested.Tuple4.return
  
`let return: 'a => t<'a, 'a, 'a, 'a>`  


### Tuple.Nested.Tuple4.toList
  
`let toList: t<'a, 'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple4.napply
  
`let napply: (
  t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do>,
  t<'a, 'b, 'c, 'd>,
) => t<'ao, 'bo, 'co, 'do>`  


### Tuple.Nested.Tuple4.ncompose
  
`let ncompose: (
  t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo>,
  t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd>,
) => t<'ga => 'fao, 'gb => 'fbo, 'gc => 'fco, 'gd => 'fdo>`  


### Tuple.Nested.Tuple4.reverse
  
`let reverse: t<'a, 'b, 'c, 'd> => t<'d, 'c, 'b, 'a>`  


### Tuple.Nested.Tuple4.show
  
`let show: t<string, string, string, string> => string`  


### Tuple.Nested.Tuple4.mono
  
`let mono: (
  t<'a => 'b, 'c => 'b, 'd => 'b, 'e => 'b>,
  t<'a, 'c, 'd, 'e>,
) => array<'b>`  


### Tuple.Nested.Tuple4.all
  
`let all: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool>,
  t<'a, 'b, 'c, 'd>,
) => bool`  


### Tuple.Nested.Tuple4.some
  
`let some: (
  t<'a => bool, 'b => bool, 'c => bool, 'd => bool>,
  t<'a, 'b, 'c, 'd>,
) => bool`  


### Tuple.Nested.Tuple4.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple4.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple4.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple4.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple4.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple4.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple4.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple4.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd`  


### Tuple.Nested.Tuple5
  
  
### Tuple.Nested.Tuple5.t
  
`type t<'a, 'b, 'c, 'd, 'e> = t6<'a, 'b, 'c, 'd, 'e, unit>`  


### Tuple.Nested.Tuple5.units
  
`type units = (unit, Tuple4.units)`  


### Tuple.Nested.Tuple5.units
  
`let units: (unit, (unit, (unit, (unit, Tuple1.t<unit>))))`  


### Tuple.Nested.Tuple5.make
  
`let make: ('a, 'b, 'c, 'd, 'e) => t<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple5.over
  
`let over: (
  'e => 'e,
  t6<'a, 'b, 'e, 'd, 'e, 'z>,
) => t6<'a, 'b, 'e, 'd, 'e, 'z>`  


### Tuple.Nested.Tuple5.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e) => 'r,
  t6<'a, 'b, 'c, 'd, 'e, 'z>,
) => 'r`  


### Tuple.Nested.Tuple5.curry
  
`let curry: (t<'a, 'b, 'c, 'd, 'e> => 'r, 'a, 'b, 'c, 'd, 'e) => 'r`  


### Tuple.Nested.Tuple5.encode
  
`let encode: (('a, 'b, 'c, 'd, 'e)) => t<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple5.decode
  
`let decode: t<'a, 'b, 'c, 'd, 'e> => ('a, 'b, 'c, 'd, 'e)`  


### Tuple.Nested.Tuple5.return
  
`let return: 'a => t<'a, 'a, 'a, 'a, 'a>`  


### Tuple.Nested.Tuple5.toList
  
`let toList: t<'a, 'a, 'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple5.napply
  
`let napply: (
  t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do, 'e => 'eo>,
  t<'a, 'b, 'c, 'd, 'e>,
) => t<'ao, 'bo, 'co, 'do, 'eo>`  


### Tuple.Nested.Tuple5.ncompose
  
`let ncompose: (
  t<
    'fa => 'fao,
    'fb => 'fbo,
    'fc => 'fco,
    'fd => 'fdo,
    'fe => 'feo,
  >,
  t<
    'ga => 'fa,
    'gb => 'fb,
    'gc => 'fc,
    'gd => 'fd,
    'ge => 'fe,
  >,
) => t<
  'ga => 'fao,
  'gb => 'fbo,
  'gc => 'fco,
  'gd => 'fdo,
  'ge => 'feo,
>`  


### Tuple.Nested.Tuple5.reverse
  
`let reverse: t<'a, 'b, 'c, 'd, 'e> => t<'e, 'd, 'c, 'b, 'a>`  


### Tuple.Nested.Tuple5.show
  
`let show: t<string, string, string, string, string> => string`  


### Tuple.Nested.Tuple5.mono
  
`let mono: (
  t<'a => 'b, 'c => 'b, 'd => 'b, 'e => 'b, 'f => 'b>,
  t<'a, 'c, 'd, 'e, 'f>,
) => array<'b>`  


### Tuple.Nested.Tuple5.all
  
`let all: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e>,
) => bool`  


### Tuple.Nested.Tuple5.some
  
`let some: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e>,
) => bool`  


### Tuple.Nested.Tuple5.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple5.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple5.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple5.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple5.set5
  
`let set5: (
  t6<'a, 'b, 'c, 'd, 'e, 'f>,
  'e,
) => t6<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple5.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple5.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple5.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple5.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd`  


### Tuple.Nested.Tuple5.get5
  
`let get5: t6<'a, 'b, 'c, 'd, 'e, 'f> => 'e`  


### Tuple.Nested.Tuple6
  
  
### Tuple.Nested.Tuple6.t
  
`type t<'a, 'b, 'c, 'd, 'e, 'f> = (
  'a,
  Tuple5.t<'b, 'c, 'd, 'e, 'f>,
)`  


### Tuple.Nested.Tuple6.units
  
`type units = (unit, Tuple5.units)`  


### Tuple.Nested.Tuple6.make
  
`let make: ('a, 'b, 'c, 'd, 'e, 'f) => t<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple6.units
  
`let units: (unit, (unit, (unit, (unit, (unit, Tuple1.t<unit>)))))`  


### Tuple.Nested.Tuple6.get
  
`let get: t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'f`  


### Tuple.Nested.Tuple6.set
  
`let set: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>,
  'f,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>`  


### Tuple.Nested.Tuple6.over
  
`let over: (
  'f => 'f,
  t7<'a, 'b, 'f, 'd, 'e, 'f, 'z>,
) => t7<'a, 'b, 'f, 'd, 'e, 'f, 'z>`  


### Tuple.Nested.Tuple6.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e, 'f) => 'r,
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>,
) => 'r`  


### Tuple.Nested.Tuple6.curry
  
`let curry: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, unit> => 'r,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
) => 'r`  


### Tuple.Nested.Tuple6.encode
  
`let encode: (('a, 'b, 'c, 'd, 'e, 'f)) => t<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple6.decode
  
`let decode: t<'a, 'b, 'c, 'd, 'e, 'f> => ('a, 'b, 'c, 'd, 'e, 'f)`  


### Tuple.Nested.Tuple6.return
  
`let return: 'a => t<'a, 'a, 'a, 'a, 'a, 'a>`  


### Tuple.Nested.Tuple6.toList
  
`let toList: t<'a, 'a, 'a, 'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple6.napply
  
`let napply: (
  t<
    'a => 'ao,
    'b => 'bo,
    'c => 'co,
    'd => 'do,
    'e => 'eo,
    'f => 'fo,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f>,
) => t<'ao, 'bo, 'co, 'do, 'eo, 'fo>`  


### Tuple.Nested.Tuple6.ncompose
  
`let ncompose: (
  t<
    'fa => 'fao,
    'fb => 'fbo,
    'fc => 'fco,
    'fd => 'fdo,
    'fe => 'feo,
    'ff => 'ffo,
  >,
  t<
    'ga => 'fa,
    'gb => 'fb,
    'gc => 'fc,
    'gd => 'fd,
    'ge => 'fe,
    'gf => 'ff,
  >,
) => t<
  'ga => 'fao,
  'gb => 'fbo,
  'gc => 'fco,
  'gd => 'fdo,
  'ge => 'feo,
  'gf => 'ffo,
>`  


### Tuple.Nested.Tuple6.reverse
  
`let reverse: t<'a, 'b, 'c, 'd, 'e, 'f> => t<'f, 'e, 'd, 'c, 'b, 'a>`  


### Tuple.Nested.Tuple6.show
  
`let show: t<string, string, string, string, string, string> => string`  


### Tuple.Nested.Tuple6.mono
  
`let mono: (
  t<
    'a => 'b,
    'c => 'b,
    'd => 'b,
    'e => 'b,
    'f => 'b,
    'g => 'b,
  >,
  t<'a, 'c, 'd, 'e, 'f, 'g>,
) => array<'b>`  


### Tuple.Nested.Tuple6.all
  
`let all: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f>,
) => bool`  


### Tuple.Nested.Tuple6.some
  
`let some: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f>,
) => bool`  


### Tuple.Nested.Tuple6.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple6.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple6.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple6.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple6.set5
  
`let set5: (
  t6<'a, 'b, 'c, 'd, 'e, 'f>,
  'e,
) => t6<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple6.set6
  
`let set6: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
  'f,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>`  


### Tuple.Nested.Tuple6.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple6.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple6.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple6.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd`  


### Tuple.Nested.Tuple6.get5
  
`let get5: t6<'a, 'b, 'c, 'd, 'e, 'f> => 'e`  


### Tuple.Nested.Tuple6.get6
  
`let get6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'g> => 'f`  


### Tuple.Nested.Tuple7
  
  
### Tuple.Nested.Tuple7.t
  
`type t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = (
  'a,
  Tuple6.t<'b, 'c, 'd, 'e, 'f, 'g>,
)`  


### Tuple.Nested.Tuple7.units
  
`type units = (unit, Tuple5.units)`  


### Tuple.Nested.Tuple7.make
  
`let make: (
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
) => t<'a, 'b, 'c, 'd, 'e, 'f, 'g>`  


### Tuple.Nested.Tuple7.units
  
`let units: (
  unit,
  (unit, (unit, (unit, (unit, (unit, Tuple1.t<unit>))))),
)`  


### Tuple.Nested.Tuple7.get
  
`let get: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'g`  


### Tuple.Nested.Tuple7.set
  
`let set: (
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>,
  'g,
) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>`  


### Tuple.Nested.Tuple7.over
  
`let over: (
  'f => 'f,
  t8<'a, 'b, 'f, 'd, 'e, 'f, 'f, 'z>,
) => t8<'a, 'b, 'f, 'd, 'e, 'f, 'f, 'z>`  


### Tuple.Nested.Tuple7.uncurry
  
`let uncurry: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'r,
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>,
) => 'r`  


### Tuple.Nested.Tuple7.curry
  
`let curry: (
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, unit> => 'r,
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
) => 'r`  


### Tuple.Nested.Tuple7.encode
  
`let encode: (
  ('a, 'b, 'c, 'd, 'e, 'f, 'g),
) => t<'a, 'b, 'c, 'd, 'e, 'f, 'g>`  


### Tuple.Nested.Tuple7.decode
  
`let decode: t<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
> => ('a, 'b, 'c, 'd, 'e, 'f, 'g)`  


### Tuple.Nested.Tuple7.return
  
`let return: 'a => t<'a, 'a, 'a, 'a, 'a, 'a, 'a>`  


### Tuple.Nested.Tuple7.toList
  
`let toList: t<'a, 'a, 'a, 'a, 'a, 'a, 'a> => array<'a>`  


### Tuple.Nested.Tuple7.napply
  
`let napply: (
  t<
    'a => 'ao,
    'b => 'bo,
    'c => 'co,
    'd => 'do,
    'e => 'eo,
    'f => 'fo,
    'g => 'go,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
) => t<'ao, 'bo, 'co, 'do, 'eo, 'fo, 'go>`  


### Tuple.Nested.Tuple7.ncompose
  
`let ncompose: (
  t<
    'fa => 'fao,
    'fb => 'fbo,
    'fc => 'fco,
    'fd => 'fdo,
    'fe => 'feo,
    'ff => 'ffo,
    'fg => 'fgo,
  >,
  t<
    'ga => 'fa,
    'gb => 'fb,
    'gc => 'fc,
    'gd => 'fd,
    'ge => 'fe,
    'gf => 'ff,
    'gg => 'fg,
  >,
) => t<
  'ga => 'fao,
  'gb => 'fbo,
  'gc => 'fco,
  'gd => 'fdo,
  'ge => 'feo,
  'gf => 'ffo,
  'gg => 'fgo,
>`  


### Tuple.Nested.Tuple7.reverse
  
`let reverse: t<
  'a,
  'b,
  'c,
  'd,
  'e,
  'f,
  'g,
> => t<'g, 'f, 'e, 'd, 'c, 'b, 'a>`  


### Tuple.Nested.Tuple7.show
  
`let show: t<
  string,
  string,
  string,
  string,
  string,
  string,
  string,
> => string`  


### Tuple.Nested.Tuple7.mono
  
`let mono: (
  t<
    'a => 'b,
    'c => 'b,
    'd => 'b,
    'e => 'b,
    'f => 'b,
    'g => 'b,
    'h => 'b,
  >,
  t<'a, 'c, 'd, 'e, 'f, 'g, 'h>,
) => array<'b>`  


### Tuple.Nested.Tuple7.all
  
`let all: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
    'g => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
) => bool`  


### Tuple.Nested.Tuple7.some
  
`let some: (
  t<
    'a => bool,
    'b => bool,
    'c => bool,
    'd => bool,
    'e => bool,
    'f => bool,
    'g => bool,
  >,
  t<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
) => bool`  


### Tuple.Nested.Tuple7.set1
  
`let set1: (t2<'a, 'b>, 'c) => t2<'c, 'b>`  


### Tuple.Nested.Tuple7.set2
  
`let set2: (t3<'a, 'b, 'c>, 'b) => t3<'a, 'b, 'c>`  


### Tuple.Nested.Tuple7.set3
  
`let set3: (t4<'a, 'b, 'c, 'd>, 'c) => t4<'a, 'b, 'c, 'd>`  


### Tuple.Nested.Tuple7.set4
  
`let set4: (t5<'a, 'b, 'c, 'd, 'e>, 'd) => t5<'a, 'b, 'c, 'd, 'e>`  


### Tuple.Nested.Tuple7.set5
  
`let set5: (
  t6<'a, 'b, 'c, 'd, 'e, 'f>,
  'e,
) => t6<'a, 'b, 'c, 'd, 'e, 'f>`  


### Tuple.Nested.Tuple7.set6
  
`let set6: (
  t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>,
  'f,
) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'g>`  


### Tuple.Nested.Tuple7.set7
  
`let set7: (
  t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h>,
  'g,
) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h>`  


### Tuple.Nested.Tuple7.get1
  
`let get1: t2<'a, 'b> => 'a`  


### Tuple.Nested.Tuple7.get2
  
`let get2: t3<'a, 'b, 'c> => 'b`  


### Tuple.Nested.Tuple7.get3
  
`let get3: t4<'a, 'b, 'c, 'd> => 'c`  


### Tuple.Nested.Tuple7.get4
  
`let get4: t5<'a, 'b, 'c, 'd, 'e> => 'd`  


### Tuple.Nested.Tuple7.get5
  
`let get5: t6<'a, 'b, 'c, 'd, 'e, 'f> => 'e`  


### Tuple.Nested.Tuple7.get6
  
`let get6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'g> => 'f`  


### Tuple.Nested.Tuple7.get7
  
`let get7: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h> => 'g`  

# Uri




### Uri.encodeComponent
  
`let encodeComponent: string => string`  

# Void




### Void.void
  
`let void: 'a => unit`  

