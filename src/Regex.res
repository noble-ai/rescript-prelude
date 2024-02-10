include Js.Re
@get external groups: Js.Re.result => option<Js.Dict.t<Js.Nullable.t<string>>> = "groups"