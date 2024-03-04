# Null


### t

type t<'a> = Js.Nullable.t<'a>

### null

let null: Js.Nullable.t<'a>

### fromOption

let fromOption: option<'a> => Js.Nullable.t<'a>

### toOption

let toOption: Js.Nullable.t<'a> => option<'a>

### return

let return: 'a => Js.Nullable.t<'a>

