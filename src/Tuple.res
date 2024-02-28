///doc/ # Tuple

// This module contains both flattened and recursive definitions of Tuple, with equivalent operators for both.

let fst2 = ((a,_)) => a
let snd2 = ((_,b)) => b

// Conversion for translating between functions of multiple arguments and tuples of some degree.
// Functions are taken as named arguments so the resulting function can be piped easily.
let mapl2 = (~f, (a,b))  => (f(a), b)
let mapr2 = (~f, (a,b))  => (a, f(b))

type t2<'a, 'z> = ('a, 'z)
type t3<'a, 'b, 'z> = ('a, 'b, 'z)
type t4<'a, 'b, 'c, 'z> = ('a, 'b, 'c, 'z)
type t5<'a, 'b, 'c, 'd, 'z> = ('a, 'b, 'c, 'd, 'z)
type t6<'a, 'b, 'c, 'd, 'e, 'z> = ('a, 'b, 'c, 'd, 'e, 'z)
type t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = ('a, 'b, 'c, 'd, 'e, 'f, 'z)
type t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'z)

type tuple1<'a> = t2<'a, ()>
type tuple2<'a, 'b> = t3<'a, 'b, ()>
type tuple3<'a, 'b, 'c> = t4<'a, 'b, 'c, ()>
type tuple4<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, ()>
type tuple5<'a, 'b, 'c, 'd, 'e> = t6<'a, 'b, 'c, 'd, 'e, ()>
type tuple6<'a, 'b, 'c, 'd, 'e, 'f> = t7<'a, 'b, 'c, 'd, 'e, 'f, ()>
type tuple7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, ()>

let return2 = a => (a, a)
let return3 = a => (a, a, a)
let return4 = a => (a, a, a, a)
let return5 = a => (a, a, a, a, a)
let return6 = a => (a, a, a, a, a, a)
let return7 = a => (a, a, a, a, a, a, a)

let curry2 = (fn, a, b)  => fn((a,b))
let curry3 = (fn, a, b, c)  => fn((a,b,c))
let curry4 = (fn, a, b, c, d)  => fn((a,b,c,d))
let curry5 = (fn, a, b, c, d, e)  => fn((a,b,c,d, e))
let curry6 = (fn, a, b, c, d, e, f)  => fn((a, b,c,d, e, f))
let curry7 = (fn, a, b, c, d, e, f, g)  => fn((a, b,c,d, e, f, g))

let uncurry2 = (fn, (a,b))  => fn(a, b)
let uncurry3 = (fn, (a,b, c))  => fn(a, b, c)
let uncurry4 = (fn, (a,b, c, d))  => fn(a, b, c, d)
let uncurry5 = (fn, (a,b, c, d, e))  => fn(a, b, c, d, e)
let uncurry6 = (fn, (a,b, c, d, e, f))  => fn(a, b, c, d, e, f)
let uncurry7 = (fn, (a,b, c, d, e, f, g))  => fn(a, b, c, d, e, f, g)

let toList2 = ((a, b)): array<'a> => [a, b]
let toList3 = ((a, b, c)): array<'a> => [a, b, c]
let toList4 = ((a, b, c, d)): array<'a> => [a, b, c, d]
let toList5 = ((a, b, c, d, e)): array<'a> => [a, b, c, d, e]
let toList6 = ((a, b, c, d, e, f)): array<'a> => [a, b, c, d, e, f]
let toList7 = ((a, b, c, d, e, f, g)): array<'a> => [a, b, c, d, e, f, g]

let napply2 = ((a, b), (x,y))  => (a(x), b(y))
let napply3 = ((a, b, c), (x,y,z))  => (a(x), b(y), c(z))
let napply4 = ((a, b, c, d), (w,x,y, z))  => (a(w), b(x), c(y), d(z))
let napply5 = ((a, b, c, d, e), (v, w,x,y, z))  => (a(v), b(w), c(x), d(y), e(z))
let napply6 = ((a, b, c, d, e, f), (u, v, w,x,y, z))  => (a(u), b(v), c(w), d(x), e(y), f(z))
let napply7 = ((a, b, c, d, e, f, g), (t, u, v, w,x,y, z))  => (a(t), b(u), c(v), d(w), e(x), f(y), g(z))

let ncompose2 = ((fa, fb), (ga, gb))  => (x => (fa(ga(x)), y => fb(gb(y))))
let ncompose3 = ((fa, fb, fc), (ga, gb, gc))  => (x => (fa(ga(x)), y => fb(gb(y)), z => fc(gc(z))))
let ncompose4 = ((fa, fb, fc, fd), (ga, gb, gc, gd))  => (w => (fa(ga(w)), x => fb(gb(x)), y => fc(gc(y)), z => fd(gd(z))))
let ncompose5 = ((fa, fb, fc, fd, fe), (ga, gb, gc, gd, ge))  => (v => (fa(ga(v)), w => fb(gb(w)), x => fc(gc(x)), y => fd(gd(y)), z => fe(ge(z))))
let ncompose6 = ((fa, fb, fc, fd, fe, ff), (ga, gb, gc, gd, ge, gf))  => (u => (fa(ga(u)), v => fb(gb(v)), w => fc(gc(w)), x => fd(gd(x)), y => fe(ge(y)), z => ff(gf(z))))
let ncompose7 = ((fa, fb, fc, fd, fe, ff, fg), (ga, gb, gc, gd, ge, gf, gg))  => (t => (fa(ga(t)), u => fb(gb(u)), v => fc(gc(v)), w => fd(gd(w)), x => fe(ge(x)), y => ff(gf(y)), z => fg(gg(z))))

let reverse2 = ((a, b)) => (b, a)
let reverse3 = ((a, b, c)) => (c, b, a)
let reverse4 = ((a, b, c, d)) => (d, c, b, a)
let reverse5 = ((a, b, c, d, e)) => (e, d, c, b, a)
let reverse6 = ((a, b, c, d, e, f)) => (f, e, d, c, b, a)
let reverse7 = ((a, b, c, d, e, f, g)) => (g, f, e, d, c, b, a)

// render a polymorphic tuple to an array
let mono = (napply, toList) => (f, t) => napply(f, t)->toList

// Some conveinences for tests
let all = (napply, toList) => (f, t) => napply(f, t)->toList->Array.all(x => x)
let some = (napply, toList) => (f, t) => napply(f, t)->toList->Array.some(x => x)

module Tuple2 = {
	type t<'a, 'b> = ('a, 'b)
	let make = (a, b) => (a, b)
	let uncurry = uncurry2
	let curry = curry2
	let return = return2
	let toList = toList2
	let napply = napply2
	let ncompose = ncompose2
	let show = ((a, b)) => `(${a}, ${b})`

	// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
	let mono = (f, t) => napply(f, t)->toList
	let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
	let some = (f, t) => napply(f, t)->toList->Array.some(x => x)

	// getters
	let get1 = ((a, _)) => a
	let get2 = ((_, b)) => b
}

module Tuple3 = {
	type t<'a, 'b, 'c> = ('a, 'b, 'c)
	let make = (a, b, c) => (a, b, c)
	let uncurry = uncurry3
	let curry = curry3
	let return = return3
	let toList = toList3
	let napply = napply3
	let ncompose = ncompose3
	let show = ((a, b, c)) => `(${a}, ${b}, ${c})`

	// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
	let mono = (f, t) => napply(f, t)->toList
	let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
	let some = (f, t) => napply(f, t)->toList->Array.some(x => x)

	// getters
	let get1 = ((a, _, _)) => a
	let get2 = ((_, b, _)) => b
	let get3 = ((_, _, c)) => c
}

module Tuple4 = {
	type t<'a, 'b, 'c, 'd> = ('a, 'b, 'c, 'd)
	let make = (a, b, c, d) => (a, b, c, d) 
	let uncurry = uncurry4
	let curry = curry4
	let return = return4
	let toList = toList4
	let napply = napply4
	let ncompose = ncompose4
	let show = ((a, b, c, d)) => `(${a}, ${b}, ${c}, ${d})`
	
	// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
	let mono = (f, t) => napply(f, t)->toList
	let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
	let some = (f, t) => napply(f, t)->toList->Array.some(x => x)

	// getters
	let get1 = ((a, _, _, _)) => a
	let get2 = ((_, b, _, _)) => b
	let get3 = ((_, _, c, _)) => c
	let get4 = ((_, _, _, d)) => d
}

module Tuple5 = {
	type t<'a, 'b, 'c, 'd, 'e> = ('a, 'b, 'c, 'd, 'e)
	let make = (a, b, c, d, e) => (a, b, c, d, e) 
	let uncurry = uncurry5
	let curry = curry5
	let return = return5
	let toList = toList5
	let napply = napply5
	let ncompose = ncompose5
	let show = ((a, b, c, d, e)) => `(${a}, ${b}, ${c}, ${d}, ${e})`	

	// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
	let mono = (f, t) => napply(f, t)->toList
	let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
	let some = (f, t) => napply(f, t)->toList->Array.some(x => x)

	// getters
	let get1 = ((a, _, _, _, _)) => a
	let get2 = ((_, b, _, _, _)) => b
	let get3 = ((_, _, c, _, _)) => c
	let get4 = ((_, _, _, d, _)) => d
	let get5 = ((_, _, _, _, e)) => e
}

module Tuple6 = {
	type t<'a, 'b, 'c, 'd, 'e, 'f> = ('a, 'b, 'c, 'd, 'e, 'f)
	let make = (a, b, c, d, e, f) => (a, b, c, d, e, f) 
	let uncurry = uncurry6
	let curry = curry6
	let return = return6
	let toList = toList6
	let napply = napply6
	let ncompose = ncompose6
	let show = ((a, b, c, d, e, f)) => `(${a}, ${b}, ${c}, ${d}, ${e}, ${f})`	

	// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
	let mono = (f, t) => napply(f, t)->toList
	let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
	let some = (f, t) => napply(f, t)->toList->Array.some(x => x)

	// getters
	let get1 = ((a, _, _, _, _, _)) => a
	let get2 = ((_, b, _, _, _, _)) => b
	let get3 = ((_, _, c, _, _, _)) => c
	let get4 = ((_, _, _, d, _, _)) => d
	let get5 = ((_, _, _, _, e, _)) => e
	let get6 = ((_, _, _, _, _, f)) => f
}

module Tuple7 = {
	type t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = ('a, 'b, 'c, 'd, 'e, 'f, 'g)
	let make = (a, b, c, d, e, f, g) => (a, b, c, d, e, f, g) 
	let uncurry = uncurry7
	let curry = curry7
	let return = return7
	let toList = toList7
	let napply = napply7
	let ncompose = ncompose7
	let show = ((a, b, c, d, e, f, g)) => `(${a}, ${b}, ${c}, ${d}, ${e}, ${f}, ${g})`	

	// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
	let mono = (f, t) => napply(f, t)->toList
	let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
	let some = (f, t) => napply(f, t)->toList->Array.some(x => x)

	// getters
	let get1 = ((a, _, _, _, _, _, _)) => a
	let get2 = ((_, b, _, _, _, _, _)) => b
	let get3 = ((_, _, c, _, _, _, _)) => c
	let get4 = ((_, _, _, d, _, _, _)) => d
	let get5 = ((_, _, _, _, e, _, _)) => e
	let get6 = ((_, _, _, _, _, f, _)) => f
	let get7 = ((_, _, _, _, _, _, g)) => g
}


module Nested = {
	// build and manipulate nested tuples like https://pursuit.purescript.org/packages/purescript-tuples/7.0.0/docs/Data.Tuple.Nested, 
	// for church encoding in recursive fields, for example

	// The basic type for nested tuples is a tuple, but could be a variant e.g.
	type t<'a, 'z> = ('a, 'z)

	// Internal structure types 
	// planning to encode a unit as the z value
	// so we can pattern match
	// for termination in these recursive types
	type t2<'a, 'z> = t<'a, 'z>
	type t3<'a, 'b, 'z> = t<'a, t2<'b, 'z>>
	type t4<'a, 'b, 'c, 'z> = t<'a, t3<'b, 'c, 'z>>
	type t5<'a, 'b, 'c, 'd, 'z> = t<'a, t4<'b, 'c, 'd, 'z>>
	type t6<'a, 'b, 'c, 'd, 'e, 'z> = t<'a, t5<'b, 'c, 'd, 'e, 'z>>
	type t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = t<'a, t6<'b, 'c, 'd, 'e, 'f, 'z>>
	type t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = t<'a, t7<'b, 'c, 'd, 'e, 'f, 'g, 'z>>
	type t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z> = t<'a, t8<'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z>>

	///....

	// Base tuple types with tail type z undefined
	// We will realize these as tupleN below with z as unit type, for termination
	// let t1: ('a) => tuple1<'a> = (a) => (a, ())
	let t2: ('a, 'z) => t2<'a, 'z> = (a, z) => (a, z)
	let t3: ('a, 'b, 'z) => t3<'a, 'b, 'z> = (a, b, z) => (a, (b, z))
	let t4: ('a, 'b, 'c, 'z) => t4<'a, 'b, 'c, 'z> = (a, b, c, z) => (a, (b, (c, z)))
	let t5: ('a, 'b, 'c, 'd, 'z) => t5<'a, 'b, 'c, 'd, 'z> = (a, b, c, d, z) => (a, (b, (c, (d, z))))
	let t6: ('a, 'b, 'c, 'd, 'e, 'z) => t6<'a, 'b, 'c, 'd, 'e, 'z> = (a, b, c, d, e, z) => (a, (b, (c, (d, (e, z)))))
	let t7: ('a, 'b, 'c, 'd, 'e, 'f, 'z) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = (a, b, c, d, e, f, z) => (a, (b, (c, (d, (e, (f, z))))))
  let t8: ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'z) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = (a, b, c, d, e, f, g, z) => (a, (b, (c, (d, (e, (f, (g, z)))))))	
	let t9: ('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z) => t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'z> = (a, b, c, d, e, f, g, h, z) => (a, (b, (c, (d, (e, (f, (g, (h, z))))))))

	type tuple1<'a> = t2<'a, ()>
	type tuple2<'a, 'b> = t3<'a, 'b, ()>
	type tuple3<'a, 'b, 'c> = t4<'a, 'b, 'c, ()>
	type tuple4<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, ()>
	type tuple5<'a, 'b, 'c, 'd, 'e> = t6<'a, 'b, 'c, 'd, 'e, ()>
	type tuple6<'a, 'b, 'c, 'd, 'e, 'f> = t7<'a, 'b, 'c, 'd, 'e, 'f, ()>
	type tuple7<'a, 'b, 'c, 'd, 'e, 'f, 'g> = t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, ()>
	type tuple8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h> = t9<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, ()>

	let rest: (t<'a, 'b>) => 'b = ((_, z)) => z

	let get1: (t2<'a, 'z>) => 'a = ((a, _)) => a
	let get2: (t3<'a, 'b, 'z>) => 'b = ((_, (b, _))) => b
	let get3: (t4<'a, 'b, 'c, 'z>) => 'c = ((_, b)) => b->get2
	let get4: (t5<'a, 'b, 'c, 'd, 'z>) => 'd = ((_, b)) => b->get3
	let get5: (t6<'a, 'b, 'c, 'd, 'e, 'z>) => 'e = ((_, b)) => b->get4
	let get6: (t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>) => 'f = ((_, b)) => b->get5
	let get7: (t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>) => 'g = ((_, b)) => b->get6
	///....

	let set1: t2<'a, 'z> => 'b => t2<'b, 'z> = ((_, z), b) => (b, z)
	let set2: t3<'a, 'b, 'z> => 'c => t3<'a, 'b, 'z> = ((a, bz), c) => (a, set1(bz, c))
	let set3: t4<'a, 'b, 'c, 'z> => 'd => t4<'a, 'b, 'd, 'z> = ((a, bcz), d) => (a, set2(bcz, d))
	let set4: t5<'a, 'b, 'c, 'd, 'z> => 'e => t5<'a, 'b, 'c, 'e, 'z> = ((a, bcdz), e) => (a, set3(bcdz, e))
	let set5: t6<'a, 'b, 'c, 'd, 'e, 'z> => 'f => t6<'a, 'b, 'c, 'd, 'f, 'z> = ((a, bcdez), f) => (a, set4(bcdez, f))
	let set6: t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'g => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = ((a, bcdefz), g) => (a, set5(bcdefz, g))
	let set7: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'h => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> = ((a, bcdefgz), h) => (a, set6(bcdefgz, h))
	///....

	module Tuple1 = {
		type t<'a> = tuple1<'a>
		type units = t<()>
		let make: ('a) => t<'a> = (a) => (a, ())
		let units = make(())
		let over1: (('a => 'r), t2<'a, 'z>) => t2<'r, 'z> = (fn, (a, z)) => (fn(a), z)
		let uncurry: (('a) => 'r) => t2<'a, 'z> => 'r  = (fn, (a, _)) => fn(a)
		let curry: (t<'a> => 'r) => 'a => 'r = (fn, a) => fn(make(a))
		let return: ('a) => t<'a> = (a) => (a, ())
		let toList: t<'a> => array<'a> = ((a, ())) => [a]
		let napply: (t<'a => 'ao>, t<'a>) => t<'ao> = ((fa, ()), (a, ()), ) => make(fa(a))
		let ncompose: (t<'fa => 'fao>, t<'ga => 'fa>) => t<'ga => 'fao> = ((fa, ()), (ga, ())) => make(a => a->ga->fa)
		external reverse: t<'a> => t<'a> = "%identity"
		let show: (t<'a>) => string = ((a, ())) => `(${a})`

		// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
		let encode = a => (a, ())
		let decode = ((a, _)) => a
		let mono = (f, t) => napply(f, t)->toList
		let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
		let some = (f, t) => napply(f, t)->toList->Array.some(x => x)

		let set1 = set1
		
		let get1: t<'a> => 'a = get1
	}

	module Tuple2 = {
		type t<'a, 'b> = t3<'a, 'b, unit>
		let make: ('a, 'b) => t<'a, 'b> = (a, b) => (a, Tuple1.make(b))

		type units = ((), Tuple1.units)
		let units = ((), Tuple1.units)

		let over: (('b => 'r), t3<'a, 'b, 'z>) => t3<'a, 'r, 'z> = (fn, (a, (b, z))) => (a, (fn(b), z))
		let uncurry: (('a, 'b) => 'r) => t3<'a, 'b, 'z> => 'r = (fn, (a, (b, _))) => fn(a, b)
		let curry: (t<'a, 'b> => 'r) => 'a => 'b => 'r = (fn, a) => b => fn(make(a, b))
		let encode: (('a, 'b)) => t<'a, 'b> = ((a, b)) => make(a, b)
		let decode: t<'a, 'b> => ('a, 'b) = ((a, (b, ()))) => (a, b)
		let return: ('a) => t<'a, 'a> = (a) => (a, Tuple1.return(a))
		let toList: t<'a, 'a> => array<'a> = ((a, (b, ()))) => [a, b]
		let napply: (t<'a => 'ao, 'b => 'bo>, t<'a, 'b>) => t<'ao, 'bo> = ((fa, (fb, ())), (a, (b, ()))) => make(fa(a), fb(b))
		let ncompose: (t<'fa => 'fao, 'fb => 'fbo>, t<'ga => 'fa, 'gb => 'fb>) => t<'ga => 'fao, 'gb=> 'fbo> = ((fa, (fb, ())), (ga, (gb, ()))) => make(a => a->ga->fa, b => b->gb->fb)
		let reverse: (t<'a, 'b>) => t<'b, 'a> = ((a, (b, ()))) => make(b, a)
		let show: (t<'a, 'b>) => string = ((a, (b, ()))) => `(${a}, ${b})`

		// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
		let mono = (f, t) => napply(f, t)->toList
		let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
		let some = (f, t) => napply(f, t)->toList->Array.some(x => x)

		let set1 = set1
		let set2 = set2
		
		let get1: t<'a, 'b> => 'a = get1
		let get2: t<'a, 'b> => 'b = get2
	}

	module Tuple3 = {
		type t<'a, 'b, 'c> = t4<'a, 'b, 'c, unit>
		let make: ('a, 'b, 'c) => t<'a, 'b, 'c> = (a, b, c) => (a, Tuple2.make(b, c))

		type units = ((), Tuple2.units)
		let units = ((), Tuple2.units)

		let over: (('c => 'r), t4<'a, 'b, 'c, 'z>) => t4<'a, 'b, 'r, 'z> = (fn, (a, (b, (c, z)))) => (a, (b, (fn(c), z)))
		let uncurry: (('a, 'b, 'c) => 'r) => t4<'a, 'b, 'c, 'z> => 'r = (fn, (a, (b, (c, _)))) => fn(a, b, c)
		let curry: (t<'a, 'b, 'c> => 'r) => 'a => 'b => 'c => 'r = (fn, a) => b => c => fn(make(a, b, c))
		let encode: (('a, 'b, 'c)) => t<'a, 'b, 'c> = ((a, b, c)) => make(a, b, c)
		let decode: t<'a, 'b, 'c> => ('a, 'b, 'c) = ((a, (b, (c, ())))) => (a, b, c)
		let return: ('a) => t<'a, 'a, 'a> = (a) => (a, Tuple2.return(a))
		let toList: t<'a, 'a, 'a> => array<'a> = ((a, (b, (c, ())))) => [a, b, c]
		let napply: (t<'a => 'ao, 'b => 'bo, 'c => 'co>, t<'a, 'b, 'c>) => t<'ao, 'bo, 'co> = ((fa, (fb, (fc, ()))), (a, (b, (c, ())))) => make(fa(a), fb(b), fc(c))
		let ncompose: (t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco>, t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc>) => t<'ga => 'fao, 'gb=> 'fbo, 'gc => 'fco> = ((fa, (fb, (fc, ()))), (ga, (gb, (gc, ())))) => make(a => a->ga->fa, b => b->gb->fb, c => c->gc->fc)
		let reverse: (t<'a, 'b, 'c>) => t<'c, 'b, 'a> = ((a, (b, (c, ())))) => make(c, b, a)
		let show: (t<'a, 'b, 'c>) => string = ((a, rest)) => `(${a}, ${Tuple2.show(rest)})`
		
		// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
		let mono = (f, t) => napply(f, t)->toList
		let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
		let some = (f, t) => napply(f, t)->toList->Array.some(x => x)

		let set1 = set1
		let set2 = set2
		let set3 = set3
		
		let get1 = get1
		let get2 = get2
		let get3 = get3
	}

	module Tuple4 = {
		type t<'a, 'b, 'c, 'd> = t5<'a, 'b, 'c, 'd, unit>
		let make: ('a, 'b, 'c, 'd) => t<'a, 'b, 'c, 'd> = (a, b, c, d) => (a, Tuple3.make(b, c, d))

		type units = ((), Tuple3.units)
		let units = ((), Tuple3.units)
		let over: (('d => 'r), t5<'a, 'b, 'c, 'd, 'z>) => t5<'a, 'b, 'r, 'd, 'z> = (fn, (a, (b, (c, (d, z))))) => (a, (b, (c, (fn(d), z))))
		let uncurry: (('a, 'b, 'c, 'd) => 'r) => t5<'a, 'b, 'c, 'd, 'z> => 'r = (fn, (a, (b, (c, (d, _))))) => fn(a, b, c, d)
		let curry: (t<'a, 'b, 'c, 'd> => 'r) => 'a => 'b => 'c => 'd => 'r = (fn, a) => b => c => d => fn(make(a, b, c, d))
		let encode: (('a, 'b, 'c, 'd)) => t<'a, 'b, 'c, 'd> = ((a, b, c, d)) => make(a, b, c, d)
		let decode: t<'a, 'b, 'c, 'd> => ('a, 'b, 'c, 'd) = ((a, (b, (c, (d, ()))))) => (a, b, c, d)
		let return: ('a) => t<'a, 'a, 'a, 'a> = (a) => (a, Tuple3.return(a))
		let toList: t<'a, 'a, 'a, 'a> => array<'a> = ((a, (b, (c, (d, ()))))) => [a, b, c, d]
		let napply: (t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do>, t<'a, 'b, 'c, 'd>) => t<'ao, 'bo, 'co, 'do> = ((fa, (fb, (fc, (fd, ())))), (a, (b, (c, (d, ()))))) => make(fa(a), fb(b), fc(c), fd(d))
		let ncompose: (t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo>, t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd>) => t<'ga => 'fao, 'gb=> 'fbo, 'gc => 'fco, 'gd => 'fdo> = ((fa, (fb, (fc, (fd, ())))), (ga, (gb, (gc, (gd, ()))))) => make(a => a->ga->fa, b => b->gb->fb, c => c->gc->fc, d => d->gd->fd)
		let reverse: (t<'a, 'b, 'c, 'd>) => t<'d, 'c, 'b, 'a> = ((a, (b, (c, (d, ()))))) => make(d, c, b, a)
		let show: (t<'a, 'b, 'c, 'd>) => string = ((a, rest)) => `(${a}, ${Tuple3.show(rest)})`
		
		// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
		let mono = (f, t) => napply(f, t)->toList
		let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
		let some = (f, t) => napply(f, t)->toList->Array.some(x => x)
		
		let set1 = set1
		let set2 = set2
		let set3 = set3
		let set4 = set4
		
		let get1 = get1
		let get2 = get2
		let get3 = get3
		let get4 = get4
	}

	module Tuple5 = {
		type t<'a, 'b, 'c, 'd, 'e> = t6<'a, 'b, 'c, 'd, 'e, unit>
		type units = ((), Tuple4.units)
		let units = ((), Tuple4.units)
		let make: ('a, 'b, 'c, 'd, 'e) => t<'a, 'b, 'c, 'd, 'e> = (a, b, c, d, e) => (a, Tuple4.make(b, c, d, e))
		let over: (('e => 'r), t6<'a, 'b, 'c, 'd, 'e, 'z>) => t6<'a, 'b, 'r, 'd, 'e, 'z> = (fn, (a, (b, (c, (d, (e, z)))))) => (a, (b, (c, (d, (fn(e), z)))))
		let uncurry: (('a, 'b, 'c, 'd, 'e) => 'r) => t6<'a, 'b, 'c, 'd, 'e, 'z> => 'r = (fn, (a, (b, (c, (d, (e, _)))))) => fn(a, b, c, d, e)
		// FIXME: wrong type?
		let curry: (t<'a, 'b, 'c, 'd, 'e> => 'r) => 'a => 'b => 'c => 'd => 'e => 'r = (fn, a) => b => c => d => e => fn(make(a, b, c, d, e))
		let encode: (('a, 'b, 'c, 'd, 'e)) => t<'a, 'b, 'c, 'd, 'e> = ((a, b, c, d, e)) => make(a, b, c, d, e)
		let decode: t<'a, 'b, 'c, 'd, 'e> => ('a, 'b, 'c, 'd, 'e) = ((a, (b, (c, (d, (e, ())))))) => (a, b, c, d, e)
		let return: ('a) => t<'a, 'a, 'a, 'a, 'a> = (a) => (a, Tuple4.return(a))
		let toList: t<'a, 'a, 'a, 'a, 'a> => array<'a> = ((a, (b, (c, (d, (e, ())))))) => [a, b, c, d, e]
		let napply: (t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do, 'e => 'eo>, t<'a, 'b, 'c, 'd, 'e>) => t<'ao, 'bo, 'co, 'do, 'eo> = ((fa, (fb, (fc, (fd, (fe, ()))))), (a, (b, (c, (d, (e, ())))))) => make(fa(a), fb(b), fc(c), fd(d), fe(e))
		let ncompose: (t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo, 'fe => 'feo>, t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd, 'ge => 'fe>) => t<'ga => 'fao, 'gb=> 'fbo, 'gc => 'fco, 'gd => 'fdo, 'ge => 'feo> = ((fa, (fb, (fc, (fd, (fe, ()))))), (ga, (gb, (gc, (gd, (ge, ())))))) => make(a => a->ga->fa, b => b->gb->fb, c => c->gc->fc, d => d->gd->fd, e => e->ge->fe)
		let reverse: (t<'a, 'b, 'c, 'd, 'e>) => t<'e, 'd, 'c, 'b, 'a> = ((a, (b, (c, (d, (e, ())))))) => make(e, d, c, b, a)
		let show: (t<'a, 'b, 'c, 'd, 'e>) => string = ((a, rest)) => `(${a}, ${Tuple4.show(rest)})`
		
		// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
		let mono = (f, t) => napply(f, t)->toList
		let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
		let some = (f, t) => napply(f, t)->toList->Array.some(x => x)
		
		let set1 = set1
		let set2 = set2
		let set3 = set3
		let set4 = set4
		let set5 = set5
		
		let get1 = get1
		let get2 = get2
		let get3 = get3
		let get4 = get4
		let get5 = get5
	}

	module Tuple6 = {
		type t<'a, 'b, 'c, 'd, 'e, 'f> = ('a, Tuple5.t<'b, 'c, 'd, 'e, 'f>)
		type units = ((), Tuple5.units)
		let make: ('a, 'b, 'c, 'd, 'e, 'f) => t<'a, 'b, 'c, 'd, 'e, 'f> = (a, b, c, d, e, f) => (a, Tuple5.make(b, c, d, e, f))

		let units = ((), Tuple5.units)

		let get: (t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>) => 'f = ((_, b)) => b->get5
		let set: t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'f => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> = ((a, bcdefz), g) => (a, set5(bcdefz, g))
		let over: (('f => 'r), t7<'a, 'b, 'c, 'd, 'e, 'f, 'z>) => t7<'a, 'b, 'r, 'd, 'e, 'f, 'z> = (fn, (a, (b, (c, (d, (e, (f, z))))))) => (a, (b, (c, (d, (e, (fn(f), z))))))
		let uncurry: (('a, 'b, 'c, 'd, 'e, 'f) => 'r) => t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'r = (fn, (a, (b, (c, (d, (e, (f, _))))))) => fn(a, b, c, d, e, f)
		let curry: (t7<'a, 'b, 'c, 'd, 'e, 'f, 'z> => 'r) => 'a => 'b => 'c => 'd => 'e => 'f => 'r = (fn, a) => b => c => d => e => f => fn(make(a, b, c, d, e, f))
		let encode: (('a, 'b, 'c, 'd, 'e, 'f)) => t<'a, 'b, 'c, 'd, 'e, 'f> = ((a, b, c, d, e, f)) => make(a, b, c, d, e, f)
		let decode: t<'a, 'b, 'c, 'd, 'e, 'f> => ('a, 'b, 'c, 'd, 'e, 'f) = ((a, (b, (c, (d, (e, (f, ()))))))) => (a, b, c, d, e, f)
		let return: ('a) => t<'a, 'a, 'a, 'a, 'a, 'a> = (a) => (a, Tuple5.return(a))
		let toList: t<'a, 'a, 'a, 'a, 'a, 'a> => array<'a> = ((a, (b, (c, (d, (e, (f, ()))))))) => [a, b, c, d, e, f]
		let napply: (t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do, 'e => 'eo, 'f => 'fo>, t<'a, 'b, 'c, 'd, 'e, 'f>) => t<'ao, 'bo, 'co, 'do, 'eo, 'fo> = ((fa, (fb, (fc, (fd, (fe, (ff, ())))))), (a, (b, (c, (d, (e, (f, ()))))))) => make(fa(a), fb(b), fc(c), fd(d), fe(e), ff(f))
		let ncompose: (t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo, 'fe => 'feo, 'ff => 'ffo>, t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd, 'ge => 'fe, 'gf => 'ff>) => t<'ga => 'fao, 'gb=> 'fbo, 'gc => 'fco, 'gd => 'fdo, 'ge => 'feo, 'gf => 'ffo> = ((fa, (fb, (fc, (fd, (fe, (ff, ())))))), (ga, (gb, (gc, (gd, (ge, (gf, ()))))))) => make(a => a->ga->fa, b => b->gb->fb, c => c->gc->fc, d => d->gd->fd, e => e->ge->fe, f => f->gf->ff)
		let reverse: (t<'a, 'b, 'c, 'd, 'e, 'f>) => t<'f, 'e, 'd, 'c, 'b, 'a> = ((a, (b, (c, (d, (e, (f, ()))))))) => make(f, e, d, c, b, a)
		let show: (t<'a, 'b, 'c, 'd, 'e, 'f>) => string = ((a, rest)) => `(${a}, ${Tuple5.show(rest)})`
		
		// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
		let mono = (f, t) => napply(f, t)->toList
		let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
		let some = (f, t) => napply(f, t)->toList->Array.some(x => x)
		
		let set1 = set1
		let set2 = set2
		let set3 = set3
		let set4 = set4
		let set5 = set5
		let set6 = set6
		
		let get1 = get1
		let get2 = get2
		let get3 = get3
		let get4 = get4
		let get5 = get5
		let get6 = get6
	}

	module Tuple7 = {
		type t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = ('a, Tuple6.t<'b, 'c, 'd, 'e, 'f, 'g>)
		type units = ((), Tuple5.units)
		let make: ('a, 'b, 'c, 'd, 'e, 'f, 'g) => t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = (a, b, c, d, e, f, g) => (a, Tuple6.make(b, c, d, e, f, g))

		let units = ((), Tuple6.units)

		let get: (t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>) => 'g = ((_, b)) => b->get6
		let set: t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'g => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g,  'z> = ((a, bcdefz), g) => (a, set6(bcdefz, g))
		let over: (('f => 'r), t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z>) => t8<'a, 'b, 'r, 'd, 'e, 'f, 'g, 'z> = (fn, (a, (b, (c, (d, (e, (f, (g, z)))))))) => (a, (b, (c, (d, (e, (f, (fn(g), z)))))))

		let uncurry: (('a, 'b, 'c, 'd, 'e, 'f, 'g) => 'r) => t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'r = (fn, (a, (b, (c, (d, (e, (f, (g, _)))))))) => fn(a, b, c, d, e, f, g)
		let curry: (t8<'a, 'b, 'c, 'd, 'e, 'f, 'g, 'z> => 'r) => 'a => 'b => 'c => 'd => 'e => 'f => 'g => 'r = (fn, a) => b => c => d => e => f => g => fn(make(a, b, c, d, e, f, g))
		let encode: (('a, 'b, 'c, 'd, 'e, 'f, 'g)) => t<'a, 'b, 'c, 'd, 'e, 'f, 'g> = ((a, b, c, d, e, f, g)) => make(a, b, c, d, e, f, g)
		let decode: t<'a, 'b, 'c, 'd, 'e, 'f, 'g> => ('a, 'b, 'c, 'd, 'e, 'f, 'g) = ((a, (b, (c, (d, (e, (f, (g, ())))))))) => (a, b, c, d, e, f, g)
		let return: ('a) => t<'a, 'a, 'a, 'a, 'a, 'a, 'a> = (a) => (a, Tuple6.return(a))
		let toList: t<'a, 'a, 'a, 'a, 'a, 'a, 'a> => array<'a> = ((a, (b, (c, (d, (e, (f, (g, ())))))))) => [a, b, c, d, e, f, g]
		let napply: (t<'a => 'ao, 'b => 'bo, 'c => 'co, 'd => 'do, 'e => 'eo, 'f => 'fo, 'g => 'go>, t<'a, 'b, 'c, 'd, 'e, 'f, 'g>) => t<'ao, 'bo, 'co, 'do, 'eo, 'fo, 'go> = ((fa, (fb, (fc, (fd, (fe, (ff, (fg, ()))))))), (a, (b, (c, (d, (e, (f, (g, ())))))))) => make(fa(a), fb(b), fc(c), fd(d), fe(e), ff(f), fg(g))
		let ncompose: (t<'fa => 'fao, 'fb => 'fbo, 'fc => 'fco, 'fd => 'fdo, 'fe => 'feo, 'ff => 'ffo, 'fg => 'fgo>, t<'ga => 'fa, 'gb => 'fb, 'gc => 'fc, 'gd => 'fd, 'ge => 'fe, 'gf => 'ff, 'gg => 'fg>) => t<'ga => 'fao, 'gb=> 'fbo, 'gc => 'fco, 'gd => 'fdo, 'ge => 'feo, 'gf => 'ffo, 'gg => 'fgo> = ((fa, (fb, (fc, (fd, (fe, (ff, (fg, ()))))))), (ga, (gb, (gc, (gd, (ge, (gf, (gg, ())))))))) => make(a => a->ga->fa, b => b->gb->fb, c => c->gc->fc, d => d->gd->fd, e => e->ge->fe, f => f->gf->ff, g => g->gg->fg)
		let reverse: (t<'a, 'b, 'c, 'd, 'e, 'f, 'g>) => t<'g, 'f, 'e, 'd, 'c, 'b, 'a> = ((a, (b, (c, (d, (e, (f, (g, ())))))))) => make(g, f, e, d, c, b, a)
		let show: (t<'a, 'b, 'c, 'd, 'e, 'f, 'g>) => string = ((a, rest)) => `(${a}, ${Tuple6.show(rest)})`
		
		// Conveniences. Need to be done literally here to avoid  mutation/side-effect error
		let mono = (f, t) => napply(f, t)->toList
		let all = (f, t) => napply(f, t)->toList->Array.all(x => x)
		let some = (f, t) => napply(f, t)->toList->Array.some(x => x)
		
		let set1 = set1
		let set2 = set2
		let set3 = set3
		let set4 = set4
		let set5 = set5
		let set6 = set6
		let set7 = set7
		
		let get1 = get1
		let get2 = get2
		let get3 = get3
		let get4 = get4
		let get5 = get5
		let get6 = get6
		let get7 = get7
	}
}
