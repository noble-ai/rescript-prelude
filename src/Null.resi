type t<'a> = Js.Nullable.t<'a>
let null: Js.Nullable.t<'a>
let fromOption: option<'a> => Js.Nullable.t<'a>
let toOption: Js.Nullable.t<'a> => option<'a>
let return: 'a => Js.Nullable.t<'a>
