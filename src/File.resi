type t
@new external make: unit => t = "File"
@get external lastModified: (t) => int = "lastModified"
@get external lastModifiedDate: (t) => Js.Date.t = "lastModifiedDate"
@get external name: (t) => string = "name"
@get external webkitRelativePath: (t) => string = "webkitRelativePath"
@get external type_: (t) => string = "type"
@get external size: (t) => int = "size"
external tToJsT: t => {..} = "%identity"
@send external slice: (t, ~start: int=?, ~end: int=?, ~contentType: string=?, ()) => t = "slice"
type stream
@ocaml.doc("
 Transforms the File into a ReadableStream that can be used to read the File contents.
 Transforms the File into a stream and reads it to completion. It returns a promise that resolves with a USVString (text).
")
@send external stream: (t) => stream = "stream"
@send external text: (t) => Promise.t<string> = "text"
module Blob: {
  type t
}
@new external makeBlob: (array<'a>, 'opts) => Blob.t = "Blob"
