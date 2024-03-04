# File


### t

type t

### make

let make: unit => t

### lastModified

let lastModified: t => int

### lastModifiedDate

let lastModifiedDate: t => Js.Date.t

### name

let name: t => string

### webkitRelativePath

let webkitRelativePath: t => string

### type_

let type_: t => string

### size

let size: t => int

### tToJsT

let tToJsT: t => {..}

### slice

let slice: (
  t,
  ~start: int=?,
  ~end: int=?,
  ~contentType: string=?,
  unit,
) => t

### stream

type stream

### stream

let stream: t => stream

### text

let text: t => string

### Blob


### makeBlob

let makeBlob: (array<'a>, 'opts) => Blob.t

