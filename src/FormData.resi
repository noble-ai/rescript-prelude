type t
@new external make: unit => t = "FormData"
@send external appendString: (t, string, string) => unit = "append"
@send external appendInt: (t, string, int) => unit = "append"
@send external appendFile: (t, string, File.t) => unit = "append"
@send external appendBlob: (t, string, File.Blob.t, string) => unit = "append"
let appendInt2: (t, string, int) => t
let appendString2: (t, string, string) => t
let appendFile2: (t, string, File.t) => t
let appendBlob2: (t, string, File.Blob.t, string) => t
external toJs: t => {..} = "%identity"
