type t = Js.Re.t
type result = Js.Re.result
@get external groups: Js.Re.result => option<Dict.t<Null.t<string>>> = "groups"
let exec_ = Js.Re.exec_
let fromString = Js.Re.fromString
let captures = Js.Re.captures
let test_ = Js.Re.test_
