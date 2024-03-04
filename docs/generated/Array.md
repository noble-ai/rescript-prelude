# Array


N+1 Array bindings.  Moderately opinionated to avoid some of the inspecific nature of primitive js functions, and make naming more explicit or consistent with other modules here.

### Array.t
  
type t<'a> = array<'a>  


### Array.fromIterable
  
let fromIterable: Iterable.t<'t> => t<'t>  


### Array.return
  
let return: 'a => t<'a>  


### Array.clone
  
let clone: t<'a> => t<'a>  
Use spread operator to make a shallow copy of an array

### Array.range
  
let range: int => t<int>  
[0..i) excludes i

### Array.rangeInclusive
  
let rangeInclusive: int => t<int>  
Use range instead  


### Array.rangeInclusive
  
let rangeInclusive: int => t<int>  


### Array.toIterable
  
let toIterable: t<'t> => Iterable.t<'t>  


### Array.length
  
let length: t<'a> => int  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/length)

### Array.includes
  
let includes: (t<'a>, 'a) => bool  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/includes)

### Array.forEach
  
let forEach: (t<'a>, 'a => unit) => unit  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)

### Array.forEachi
  
let forEachi: (t<'a>, ('a, int) => unit) => unit  


### Array.tap
  
let tap: (t<'a>, t<'a> => unit) => t<'a>  
pass an array to an effect, returning the original array

### Array.tapMap
  
let tapMap: (t<'a>, 'a => unit) => t<'a>  
pass each element of an array to an effect, returning the original array

### Array.getUnsafe
  
let getUnsafe: (t<'a>, int) => 'a  


### Array.get
  
let get: (t<'a>, int) => option<'a>  


### Array.getExn
  
let getExn: (t<'a>, int) => 'a  


### Array.indexOf
  
let indexOf: (t<'a>, 'a) => int  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf)

### Array.indexOf
  
let indexOf: (t<'a>, 'a) => option<int>  
Use findIndex instead: This has vague comparison semantics  
indexOf uses strict equality for comparison which does not play well with rescripts more-but-not-clearly value based situations.[{a: 3}, {a: 4}].indexOf({a: 4}) == -1.

### Array.y
  
let y: unit => option<int>  


### Array.findIndex
  
let findIndex: (t<'a>, 'a => bool) => int  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)

### Array.findIndex
  
let findIndex: (t<'a>, 'a => bool) => option<int>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)

### Array.getIndexBy
  
let getIndexBy: (t<'a>, 'a => bool) => option<int>  
Use findIndex instead  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex)

### Array.all
  
let all: (t<'a>, 'a => bool) => bool  
Renamed to match Promise, Result, Option

### Array.alli
  
let alli: (t<'a>, ('a, int) => bool) => bool  
Renamed to match Promise, Result, Option

### Array.every
  
let every: (t<'a>, 'a => bool) => bool  
Use all instead: Renamed to match Promise, Result, etc  


### Array.everyi
  
let everyi: (t<'a>, ('a, int) => bool) => bool  
Use alli instead: : Renamed to match Promise, Result, etc  


### Array.some
  
let some: (t<'a>, 'a => bool) => bool  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)

### Array.somei
  
let somei: (t<'a>, ('a, int) => bool) => bool  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)

### Array.isEmpty
  
let isEmpty: t<'a> => bool  


### Array.Mut
  
  
### Array.Mut.sort
  
let sort: t<'a> => t<'a>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort)

### Array.Mut.reverse
  
let reverse: t<'a> => t<'a>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse)

### Array.Mut.splice
  
let splice: (t<'a>, ~index: int, ~remove: int, array<'a>) => t<'a>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice)

### Array.Mut.splice_
  
let splice_: (t<'a>, ~index: int, ~remove: int, array<'a>) => unit  


### Array.Mut.push
  
let push: (t<'a>, 'a) => int  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/push)

### Array.Mut.push_
  
let push_: (t<'a>, 'a) => unit  


### Array.Mut.pushMany
  
let pushMany: (t<'a>, array<'a>) => int  


### Array.Mut.pushMany_
  
let pushMany_: (t<'a>, array<'a>) => unit  


### Array.Mut.set
  
let set: (t<'a>, int, 'a) => unit  


### Array.setUnsafe
  
let setUnsafe: (t<'a>, int, 'a) => t<'a>  


### Array.set
  
let set: (t<'a>, int, 'a) => t<'a>  


### Array.map
  
let map: (t<'a>, 'a => 'b) => t<'b>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)

### Array.mapi
  
let mapi: (t<'a>, ('a, int) => 'b) => t<'b>  


### Array.const
  
let const: (t<'x>, 'b) => t<'b>  
return a new array with each element replaced with `b`

### Array.bind
  
let bind: (t<'a>, 'a => t<'b>) => t<'b>  
Renamed to match Promise, Result, Option

### Array.bindi
  
let bindi: (t<'a>, ('a, int) => t<'b>) => t<'b>  


### Array.identity
  
let identity: 'a => 'a  


### Array.join
  
let join: t<t<'a>> => t<'a>  
Collapse an array of arrays by one degree

### Array.flatten
  
let flatten: t<t<'a>> => t<'a>  
use join instead  
Renamed to match Promise, Result, Option

### Array.filter
  
let filter: (t<'a>, 'a => bool) => t<'a>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter)

### Array.filteri
  
let filteri: (t<'a>, ('a, int) => bool) => t<'a>  


### Array.keepMap
  
let keepMap: (t<'a>, 'a => option<'b>) => array<'b>  


### Array.catOptions
  
let catOptions: t<option<'a>> => t<'a>  


### Array.keepBind
  
let keepBind: (t<option<'a>>, 'a => option<'b>) => t<'b>  


### Array.first
  
let first: (t<'a>, 'a => bool) => option<'a>  


### Array.firsti
  
let firsti: (t<'a>, ('a, int) => bool) => option<'a>  


### Array.find
  
let find: (t<'a>, 'a => bool) => option<'a>  
Use first instead  


### Array.findi
  
let findi: (t<'a>, ('a, int) => bool) => option<'a>  
Use firsti instead  


### Array.firstOption
  
let firstOption: (t<'a>, 'a => option<'b>) => option<'b>  


### Array.firstEq
  
let firstEq: (t<'a>, 'a) => option<'a>  


### Array.findEq
  
let findEq: (t<'a>, 'a) => option<'a>  


### Array.firstBy
  
let firstBy: (t<'a>, 'a => 'b, 'b) => option<'a>  


### Array.findBy
  
let findBy: (t<'a>, 'a => 'b, 'b) => option<'a>  
Use firstBy instead  


### Array.last
  
let last: (t<'a>, 'a => bool) => option<'a>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findLast)

### Array.lasti
  
let lasti: (t<'a>, ('a, int) => bool) => option<'a>  


### Array.findLast
  
let findLast: (t<'a>, 'a => bool) => option<'a>  
Use last instead  


### Array.findLasti
  
let findLasti: (t<'a>, ('a, int) => bool) => option<'a>  
Use lasti instead  


### Array.joinWith
  
let joinWith: (t<string>, string) => string  
Join is a common term for monads, and this function is fairly specific so give it the more specific name

### Array.reduce
  
let reduce: (t<'a>, ('b, 'a) => 'b, 'b) => 'b  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)

### Array.reducei
  
let reducei: (t<'a>, ('b, 'a, int) => 'b, 'b) => 'b  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)

### Array.reverse
  
let reverse: t<'a> => t<'a>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toReversed)

### Array.toIndices
  
let toIndices: t<'a> => t<int>  


### Array.sort
  
let sort: t<'a> => t<'a>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toSorted)

### Array.sortCmp
  
let sortCmp: (t<'a>, ('a, 'a) => int) => t<'a>  


### Array.slice
  
let slice: (t<'a>, int, int) => t<'a>  
[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice)

### Array.sliceFrom
  
let sliceFrom: (t<'a>, int) => t<'a>  


### Array.head
  
let head: t<'a> => option<'a>  
return first element

### Array.tail
  
let tail: t<'a> => t<'a>  


### Array.stem
  
let stem: t<'a> => t<'a>  
all but last element

### Array.last
  
let last: t<'a> => option<'a>  


### Array.take
  
let take: (t<'a>, int) => t<'a>  


### Array.zipAdjacent
  
let zipAdjacent: t<'a> => t<('a, 'a)>  


### Array.partition
  
let partition: (t<'a>, ('a, int) => bool) => (t<'a>, t<'a>)  


### Array.evenOdd
  
type evenOdd<'a> = {even: t<'a>, odd: t<'a>}  


### Array.partitionIndexEvenOdd
  
let partitionIndexEvenOdd: t<'a> => evenOdd<'a>  
Use partition with your own predicate instead  


### Array.cross
  
let cross: (t<'a>, t<'b>) => t<('a, 'b)>  


### Array.splitAt
  
let splitAt: (t<'a>, int) => (t<'a>, t<'a>)  


### Array.intercalate
  
let intercalate: (t<'a>, 'a) => t<'a>  


### Array.intercalateWithGenerator
  
let intercalateWithGenerator: (t<'a>, int => 'a) => t<'a>  


### Array.concat
  
let concat: (t<'a>, t<'a>) => t<'a>  
Use spread operator to combine two arrays

### Array.append
  
let append: (t<'a>, 'a) => t<'a>  
Use spread operator to append an element to an array

### Array.prepend
  
let prepend: ('a, t<'a>) => t<'a>  
Use spread operator to prepend an element to an array

### Array.splice
  
let splice: (t<'a>, ~index: int, ~remove: int, t<'a>) => t<'a>  


### Array.replace
  
let replace: (t<'a>, 'a, int) => t<'a>  


### Array.insert
  
let insert: (t<'a>, 'a, int) => t<'a>  


### Array.remove
  
let remove: (t<'a>, int) => t<'a>  


### Array.combinations
  
let combinations: (t<'a>, ~begin: t<'a>=?, ~size: int) => t<t<'a>>  


### Array.generateCombinations
  
let generateCombinations: (t<'a>, ~begin: t<'a>=?, ~size: int) => t<t<'a>>  
Use combinations instead  

