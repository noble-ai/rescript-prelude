type t

@new external make: unit => t = "FormData"

@send external appendString: (t, string, string) => unit = "append"
@send external appendInt: (t, string, int) => unit = "append"
@send external appendFile: (t, string, File.t) => unit = "append"
@send external appendBlob: (t, string, File.Blob.t, string) => unit = "append"

let appendInt2: (t, string, int) => t = (fd, k, v) => {
  appendInt(fd, k, v)
  fd
}

let appendString2: (t, string, string) => t = (fd, k, v) => {
  appendString(fd, k, v)
  fd
}

let appendFile2: (t, string, File.t) => t = (fd, k, v) => {
  appendFile(fd, k, v)
  fd
}

let appendBlob2: (t, string, File.Blob.t, string) => t = (fd, field_name, data, filename) => {
  appendBlob(fd, field_name, data, filename)
  fd
}

external toJs: (t) => Js.t<'a> = "%identity"
