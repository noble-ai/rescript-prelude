# Regex




### Regex.t
  
`type t = Js.Re.t`  


### Regex.result
  
`type result = Js.Re.result`  


### Regex.groups
  
`let groups: Js.Re.result => option<Dict.t<Null.t<string>>>`  


### Regex.exec_
  
`let exec_: (Js.Re.t, string) => option<Js.Re.result>`  


### Regex.fromString
  
`let fromString: string => Js.Re.t`  


### Regex.captures
  
`let captures: Js.Re.result => array<Js.nullable<string>>`  


### Regex.test_
  
`let test_: (Js.Re.t, string) => bool`  

