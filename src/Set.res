type t<'a>

@new external make: () => t<'a> = "Set"
@new external fromArray: (array<'a>) => t<'a> = "Set"

@send external has: (t<'a>, 'a) => bool = "has"

@module("./Set.js")
external toArray: (t<'a>) => array<'a> = "toArray"

@send external size: (t<'a>) => int = "size"

let unique = a => a->fromArray->toArray
