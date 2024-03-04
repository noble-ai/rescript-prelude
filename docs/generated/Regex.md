# Regex


### t

type t = Js.Re.t

### result

type result = Js.Re.result

### groups

let groups: Js.Re.result => option<Dict.t<Null.t<string>>>

### exec_

let exec_: (Js.Re.t, string) => option<Js.Re.result>

### fromString

let fromString: string => Js.Re.t

### captures

let captures: Js.Re.result => array<Js.nullable<string>>

### test_

let test_: (Js.Re.t, string) => bool

