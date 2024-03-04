# FormData




### FormData.t
  
`type t`  


### FormData.make
  
`let make: unit => t`  


### FormData.appendString
  
`let appendString: (t, string, string) => unit`  


### FormData.appendInt
  
`let appendInt: (t, string, int) => unit`  


### FormData.appendFile
  
`let appendFile: (t, string, File.t) => unit`  


### FormData.appendBlob
  
`let appendBlob: (t, string, File.Blob.t, string) => unit`  


### FormData.appendInt2
  
`let appendInt2: (t, string, int) => t`  


### FormData.appendString2
  
`let appendString2: (t, string, string) => t`  


### FormData.appendFile2
  
`let appendFile2: (t, string, File.t) => t`  


### FormData.appendBlob2
  
`let appendBlob2: (t, string, File.Blob.t, string) => t`  


### FormData.toJs
  
`let toJs: t => {..}`  

