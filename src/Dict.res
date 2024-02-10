include Js.Dict
// Immutable set.  Mutable set causes react state to not be invalidated which is a problem for react.
let set: (t<'a>, key, 'a) => t<'a> = %raw(`(dict, key, a) => { return {...dict, [key]: a} }`)

let merge: (t<'a>, t<'a>) => t<'a> = %raw(`(dict1, dict2) => { return {...dict1, ...dict2} }`)