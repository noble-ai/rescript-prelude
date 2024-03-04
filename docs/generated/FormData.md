# FormData


### t

type t

### make

let make: unit => t

### appendString

let appendString: (t, string, string) => unit

### appendInt

let appendInt: (t, string, int) => unit

### appendFile

let appendFile: (t, string, File.t) => unit

### appendBlob

let appendBlob: (t, string, File.Blob.t, string) => unit

### appendInt2

let appendInt2: (t, string, int) => t

### appendString2

let appendString2: (t, string, string) => t

### appendFile2

let appendFile2: (t, string, File.t) => t

### appendBlob2

let appendBlob2: (t, string, File.Blob.t, string) => t

### toJs

let toJs: t => {..}

