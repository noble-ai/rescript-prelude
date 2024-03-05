let tap = (a: 'a, fn: 'a => unit): 'a => {
  fn(a) 
  a
}
