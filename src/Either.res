@deriving(accessors)
type t<'a, 'b> = Left('a) | Right('b)

let map: type r. ('l => 'lo) => t<'l, r> => t<'lo, r> = (fn, t) => 
	switch t {
		| Left(l) => Left(fn(l))
		| Right(r) => Right(r)
	}

let bimap = (fnl: 'l => 'lo, fnr: 'r => 'ro, t: t<'l, 'r>): t<'lo, 'ro> => 
	switch t {
		| Left(l) => Left(fnl(l))
		| Right(r) => Right(fnr(r))
	}

// TODO: not general
let sequence = (t: t<option<'a>, option<'b>>): option<t<'a, 'b>> => {
	switch t {
		| Left(Some(a)) => Some(Left(a))
		| Right(Some(b)) => Some(Right(b))
		| _ => None
	}
}

let either = (fna, fnb, t: t<'a, 'b>) => 
	switch t {
		| Left(a) => fna(a)
		| Right(b) => fnb(b)
	}

module Nested = {
	type t1<'a> = t<'a, ()>
	type t2<'a, 'b> = t<'a, t1<'b>>
	type t3<'a, 'b, 'c> = t<'a, t2<'b, 'c>>
	type t4<'a, 'b, 'c, 'd> = t<'a, t3<'b, 'c, 'd>>
	type t5<'a, 'b, 'c, 'd, 'e> = t<'a, t4<'b, 'c, 'd, 'e>>
	type t6<'a, 'b, 'c, 'd, 'e, 'f> = t<'a, t5<'b, 'c, 'd, 'e, 'f>>
}