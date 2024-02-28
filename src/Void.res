///doc/ # Void
///doc/ Void is a function that given any input returns unit ()
///doc/ USE SPARINGLY
///doc/ Prefer a function that casts from your specific expected type to unit.
///doc/ Promise and Option have examples.
///doc/ The hazard here is that you can throw away an under-applied function and not get any notice!
///doc/ This is a common pattern in functional languages where the function called returns some data but the caller doesnt want it.
///doc/ You can see this piped in at the end of event and promise handling chains
///doc/ Not too much to type out but looks awkward to write in a chain without the name.
let void = (_: 'a) => ()
