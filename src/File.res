type t

@new external make: unit => t = "File"
@get external lastModified: (t) => int = "lastModified"
@get external lastModifiedDate: (t) => Js.Date.t = "lastModifiedDate"
@get external name: (t) => string = "name"
@get external webkitRelativePath: (t) => string = "webkitRelativePath"
@get external type_: (t) => string = "type"
@get external size: (t) => int = "size"

external tToJsT: t => Js.t<'a> = "%identity"

@send external slice: (t, ~start: int=?, ~end: int=?, ~contentType: string=?, ()) => t = "slice"

type stream
@send external stream: (t) => stream = "stream"

@send external text: (t) => string = "text"

// Transforms the File into a stream and reads it to completion. It returns a promise that resolves with an ArrayBuffer.
// Blob.prototype.arrayBuffer()

module Blob = {
  type t
}

@new external makeBlob: (array<'a>, 'opts) => Blob.t = "Blob"
