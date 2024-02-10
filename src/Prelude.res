module Array = Array
module Date = Js.Date
module Dict = Dict
module Either = Either
module File = File
module Float = Float
module FormData = FormData
module Int = Int
module Json = Js.Json
module Promise = Promise
module PromiseResult = PromiseResult
module Regex = Regex
module Result = Result
module Spread = Spread
module String = String
module Tap = Tap
module Tuple = Tuple
module Void = Void

@deprecated
module Secret = {
	module Belt = Belt
	module Js = Js
}

// Opening Prelude in your project will exclude Belt
module Belt = { }
// Opening Js in your project will exclude Js
module Js = { }

