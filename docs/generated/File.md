# File




### File.t
  
`type t`  


### File.make
  
`let make: unit => t`  


### File.lastModified
  
`let lastModified: t => int`  


### File.lastModifiedDate
  
`let lastModifiedDate: t => Js.Date.t`  


### File.name
  
`let name: t => string`  


### File.webkitRelativePath
  
`let webkitRelativePath: t => string`  


### File.type_
  
`let type_: t => string`  


### File.size
  
`let size: t => int`  


### File.tToJsT
  
`let tToJsT: t => {..}`  


### File.slice
  
`let slice: (
  t,
  ~start: int=?,
  ~end: int=?,
  ~contentType: string=?,
  unit,
) => t`  


### File.stream
  
`type stream`  


### File.stream
  
`let stream: t => stream`  
  
 Transforms the File into a ReadableStream that can be used to read the File contents.  
 Transforms the File into a stream and reads it to completion. It returns a promise that resolves with a USVString (text).  


### File.text
  
`let text: t => Promise.t<string>`  


### File.Blob
  
  
### File.Blob.t
  
`type t`  


### File.makeBlob
  
`let makeBlob: (array<'a>, 'opts) => Blob.t`  

