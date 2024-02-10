let make = Js.String2.make

// Just like Array.splitAt
let splitAt = (str: string, i: int) => {
  let a = str->Js.String2.slice(~from=0, ~to_=i)
  let b = str->Js.String2.slice(~from=i, ~to_={str->Js.String2.length})
  (a, b)
}

let slice = Js.String2.slice
let trim = Js.String2.trim
let split = Js.String2.split
let charAt = Js.String2.charAt
let trim = Js.String2.trim
let indexOf = Js.String2.indexOf
let length = Js.String2.length
let match_ = Js.String2.match_

let toUpperCase = Js.String2.toUpperCase
let toLowerCase = Js.String2.toLowerCase

let replaceByRe = Js.String2.replaceByRe

let capitalize = (str: string): string => {
  let firstLetter = str->Js.String2.slice(~from=0, ~to_=1)->Js.String2.toUpperCase
  let remainingLetters = str->Js.String2.sliceToEnd(~from=1)
  firstLetter->Js.String2.concat(remainingLetters)
}

let shortenLargeString = (str, ~max=255, ()) => {
  let stringLength = str->Js.String2.length
  if stringLength > max {
    `${str->Js.String2.substrAtMost(~from=0, ~length=max)}...`
  } else {
    str
  }
}

let prettyOptions = (arr: array<string>): string => {
  switch arr {
  | [] => ""
  | [only] => only
  | many => {
      let length = many->Js.Array2.length
      let last = many[length - 1]->Option.getExn(~desc="prettyOptions last")
      let rest = many->Js.Array2.slice(~start=0, ~end_=length - 1)
      `${rest->Js.Array2.joinWith(", ")} or ${last}`
    }
  }
}

let getRandomString = (): string =>
  Js.Math.random()->Js.Float.toStringWithRadix(~radix=36)->Js.String2.slice(~from=0, ~to_=2)

// TODO: this is only removing adjacent eq elements? Are they sorted?
let makeUniq = (str: string, separator: string) =>
  str
  ->Js.String2.split(separator)
  ->Lodash.uniq
  ->Js.Array2.joinWith(separator)

let startsWith = Js.String2.startsWith
let includes = Js.String2.includes

let splitByComma = (str: string) =>
  str->Js.String2.replaceByRe(%re("/\s/g"), "")->Js.String2.split(",")

let stringToId = (str: string): string => str->Js.String2.split(" ")->Js.Array2.joinWith("_")
