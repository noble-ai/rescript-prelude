// Just like Array.splitAt
type t = string
let splitAt = (str: t, i: int) => {
  let a = str->Js.String2.slice(~from=0, ~to_=i)
  let b = str->Js.String2.slice(~from=i, ~to_={str->Js.String2.length})
  (a, b)
}

let capitalize = (str: t): t => {
  let firstLetter = str->Js.String2.slice(~from=0, ~to_=1)->Js.String2.toUpperCase
  let remainingLetters = str->Js.String2.sliceToEnd(~from=1)
  firstLetter->Js.String2.concat(remainingLetters)
}

// TODO: localeCompare?
let compare: (t, t) => int = (a, b) => a > b ? 1 : a < b ? -1 : 0

let shortenLargeString = (str, ~max=255, ()) => {
  let stringLength = str->Js.String2.length
  if stringLength > max {
    `${str->Js.String2.substrAtMost(~from=0, ~length=max)}...`
  } else {
    str
  }
}

let prettyOptions = (arr: array<string>): t => {
  switch arr {
  | [] => ""
  | [only] => only
  | many => {
      let length = many->Array.length
      let last = many[length - 1]->Option.getExn(~desc="prettyOptions last")
      let rest = many->Array.slice(0, length - 1)
      `${rest->Array.joinWith(", ")} or ${last}`
    }
  }
}

let getRandomString = (): t =>
  Float.random()->Float.toStringWithRadix(~radix=36)->Js.String2.slice(~from=0, ~to_=2)

// TODO: this is only removing adjacent eq elements? Are they sorted?
let makeUniq = (str: t, separator: t) =>
  str
  ->Js.String2.split(separator)
  ->Set.unique
  ->Array.joinWith(separator)

let splitByComma = (str: t) =>
  str->Js.String2.replaceByRe(%re("/\s/g"), "")->Js.String2.split(",")

let stringToId = (str: t): t => str->Js.String2.split(" ")->Array.joinWith("_")

let includes = Js.String2.includes
let split = Js.String2.split
let concat = Js.String2.concat
let replaceByRe = Js.String2.replaceByRe
let endsWith = Js.String2.endsWith
let concatMany = Js.String2.concatMany
let toLowerCase = Js.String2.toLowerCase
let toUpperCase = Js.String2.toUpperCase
let length = Js.String2.length
let make = Js.String2.make
let replace = Js.String2.replace
let match_ = Js.String2.match_
let charAt = Js.String2.charAt
let slice = Js.String2.slice
let trim = Js.String2.trim

@send external get: (t, int) => option<t> = "at"
@send external getUnsafe: (t, int) => t = "at"

let startsWith = Js.String2.startsWith
let sliceToEnd = Js.String2.sliceToEnd

let indexOf = Js.String2.indexOf