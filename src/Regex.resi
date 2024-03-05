type t = Js.Re.t
type result = Js.Re.result
@get external groups: Js.Re.result => option<Dict.t<Null.t<string>>> = "groups"
let exec_: (Js.Re.t, string) => option<Js.Re.result>
let fromString: string => Js.Re.t
let captures: Js.Re.result => array<Js.nullable<string>>
let test_: (Js.Re.t, string) => bool
