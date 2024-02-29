///doc/ # Iterable

type t<'a>

@send external forEach: (t<'a>, 'a => unit) => unit = "forEach"