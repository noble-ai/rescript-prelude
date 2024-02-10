open! Vitest 

let makeArrayEvenOdd = (~even, ~odd, ~length) => {
	Belt.Array.range(0, length)->Array.bindWithIndex( (_a, i) => [`${odd}${i->Belt.Int.toString}`, `${even}${i->Belt.Int.toString}`] )
}

describe("Array", () => {

	describe("#transpose", () => {
		let arr = [[1, 2, 3, 4],
							 [ 4, 5, 6, 7],
							[ 7, 8, 9, 10]]
		let zip = Lodash.zipArray(arr)
		test("expect transpose", () => {
			expect(zip[0])->toEqual(Some([1, 4, 7]))
			expect(zip[1])->toEqual(Some([2, 5, 8]))
			expect(zip[2])->toEqual(Some([3, 6, 9]))
			expect(zip[3])->toEqual(Some([4, 7, 10]))
		})
	})

	describe("#keepBind", () => {
		// Some disparate values
		let even = "even"
		let odd = "odd"
		// folded into an array somehow
		let arr = makeArrayEvenOdd(~even, ~odd, ~length=10)->Js.Array2.map(x => Some(x))
		// intending to keep the even ones
		let keepEven = (x) => switch x {
			| e if e->Js.String2.includes(even) => Some(e)
			| _ => None
		}
		let result = arr->Array.keepBind(keepEven)
		test("returns evens", () => {
			expect(result->Js.Array2.every(x => x->Js.String2.includes(even)))->toBe(true)
		})
	})

	describe("#tail", () => {
		describe("length >= 2", () => {
			let first = 1
			let second = 2
			let arr = [first, second, 3, 4, 5]
			let res = Array.tail(arr)
			it("is one element shorter", () => {
				expect(res)->toHaveLengthArray(arr->Js.Array2.length - 1)
			})
			it("has second element as first", () => {
				expect(res[0])->toEqual(Some(second))
			})
		})

		describe("length 1", () => {
			let first = 1
			let arr = [first]
			let res = Array.tail(arr)
			it("is empty", () => {
				expect(res)->toEqual([])
			})
		})

		describe("length 0", () => {
			let arr = []
			let res = Array.tail(arr)
			it("is empty", () => {
				expect(res)->toEqual([])
			})
		})
	})

	describe("#stem", () => {
		describe("length >= 1", () => {
			let arr = [3, 4, 5]
			let res = Array.stem(arr)
			it("is one element shorter", () => {
				expect(res)->toHaveLengthArray(arr->Js.Array2.length - 1)
			})
			it("all elements in same place", () => {
				res->Js.Array2.forEachi( (x, i) => expect(Some(x))->toEqual(arr[i]) )
			})
		})

		describe("length 0", () => {
			let arr = []
			let res = Array.stem(arr)
			it("is empty", () => {
				expect(res)->toEqual([])
			})
		})
	})

  describe("#zipAdjacent", () => {
		let arr = [1, 2, 3, 4, 5]
		let res = arr->Array.zipAdjacent
		it("is one element shorter", () => {
			expect(res)->toHaveLengthArray(arr->Js.Array2.length - 1)
		})
		it("has adjacent pairs", () => {
			res->Js.Array2.forEachi( (x, i) => {
				let left = arr->Belt.Array.getUnsafe(i)
				let right = arr->Belt.Array.getUnsafe(i+1)
				expect(x)->toEqual((left, right))
		  })
		})
	})

	describe("#partitionIndexEvenOdd", () => { 
		let length = 10
		let even = "even"
		let odd = "odd"
		// Encode even and odds to be able to check they each get returned, not just filling with one value
		let arr = makeArrayEvenOdd(~even, ~odd, ~length)
		let result = arr->Array.partitionIndexEvenOdd
		describe("all evens are even", () => {
			test("returns evens", () => {
				expect(result.even->Js.Array2.every(x => x->Js.String2.includes(even)))->toBe(true)
			})
			test("returns odds", () => {
				expect(result.odd->Js.Array2.every(x => x->Js.String2.includes(odd)))->toBe(true)
			})
		})	
	})


	describe("#cross", () => {
		describe("For two arrays", () => {
			let lenX = 3
			let lenY = 5
			// Create array with lenX elements
			let xs = Belt.Array.make(lenX, 0)->Js.Array2.mapi( (_, i) => i)
			let ys = Belt.Array.make(lenY, 0)->Js.Array2.mapi( (_, i) => i)
			let cross = Array.cross(xs, ys)
			test("has length lenX * lenY", () => {
				expect(cross->Js.Array2.length)->toEqual(lenX * lenY)
			})
			test(" each x appears lenY times", () => {
				xs->Js.Array2.forEach( x => {
					let count = cross->Js.Array2.filter( ((y, _)) => y == x)->Js.Array2.length
					expect(count)->toEqual(lenY)
				})
			})
			test(" each y appears lenX times", () => {
				ys->Js.Array2.forEach( y => {
					let count = cross->Js.Array2.filter( ((_, x)) => x == y)->Js.Array2.length
					expect(count)->toEqual(lenX)
				})
			})
		})
	})

	describe("#splitAt", () => {
		describe("empty", () => {
			let arr = []
			let index = [-1, 0, 666]
			index->Js.Array2.forEach( index => {
				describe(`at any index e.g. ${index->Belt.Int.toString}`, () => {
					test("returns two empty arrays", () => {
						expect(arr->Array.splitAt(index))->toEqual(([], []))
					})
				})
			})
		})

		describe("one element", () => {
			let arr = ["haha"]

		
			describe("outside index", () => {
				test("returns empty array in left", () => {
					expect(arr->Array.splitAt(666))->toEqual((["haha"], []))
				})
			})
		})

		describe("many element", () => {
			let arr = ["haha", "hehe", "hoho"]
				describe("index zero", () => {
					test("returns empty array in left", () => {
						expect(arr->Array.splitAt(0))->toEqual(([], arr))
					})
				})

				describe("index one", () => {
					test("returns one element in left", () => {
						expect(arr->Array.splitAt(1))->toEqual((["haha"], ["hehe", "hoho"]))
					})
				})	

				describe("index outside", () => {
					test("returns empty array in right", () => {
						expect(arr->Array.splitAt(666))->toEqual((arr, []))
					})
				})
		})
	})

	describe("#intercalate", () => {
		let inserted = "zzz"
		describe("empty", () => {
			let arr = []
			let result = arr->Array.intercalate(inserted)
			test("returns source", () => {
				expect(arr)->toEqual(result)
			})
		})
		describe("one element", () => {
			let arr = ["a"]
			let result = arr->Array.intercalate(inserted)
			test("returns source", () => {
				expect(arr)->toEqual(result)
			})
		})
		describe("non-empty", () => {
			let arrays = [("two element", ["a", "b"]), ("many element", ["a","b","c","d","e"])]
			arrays->Js.Array2.forEach(((desc, arr)) => {
				describe( desc, () => {
					let result = arr->Array.intercalate(inserted)
					let {even, odd} = Array.partitionIndexEvenOdd(result)

					test("odd indexes equals source", () => {
						expect(odd)->toEqual(arr)
					})
					test("even indexes all equal inserted", () => {
						expect(even->Js.Array2.every(x => x == inserted))->toBeTruthy
					})
				})
			})
		})
	})

	describe("#replace", () => {
		let replacement = 666
		describe("empty", () => {
			let arr = []
			let index = 0
			let result = arr->Array.replace(replacement, index)
			test("returns source", () => {
				expect(arr)->toEqual(result)
			})
		})
		describe("non-empty", () => {
			let arrays = [("one element", [1]), ("two element", [1, 2]), ("many element", [1,2,3,4,5])]
			arrays->Js.Array2.forEach(((desc, arr)) => {
				describe(desc, () => {
					describe("negative index", () => {
						let index = -1
						let result = arr->Array.replace(replacement, index)
						test("returns source", () => {
							expect(arr)->toEqual(result)
						})
					})
					describe("> length", () => {
						let index = arr->Js.Array2.length
						let result = arr->Array.replace(replacement, index)
						test("returns source", () => {
							expect(arr)->toEqual(result)
						})
					})
					let indices = @doesNotRaise [0, arr->Js.Array2.length-1, arr->Js.Array2.length/2]
					indices->Js.Array2.forEach( (index) => {
						describe(`replace ${index->Belt.Int.toString}`, () => {
							let result = arr->Array.replace(replacement, index)
							test("does not mutate source", () => {
								expect(arr->Js.Array2.unsafe_get(index))->not->toEqual(replacement)
							})
							test("replaces index", () => {
								expect(result->Js.Array2.unsafe_get(index))->toEqual(replacement)
							})
							test("maintains length", () => {
								expect(result->Js.Array2.length)->toEqual(result->Js.Array2.length)
							})
						})
					})
				})
			})
		})
	})

	describe("#insert", () => {
		let element = "666"
		describe("empty", () => {
			let arr = []
			describe("zero", () => {
				let index = 0
				let result = arr->Array.insert(element, index)
				test("returns insert", () => {
					expect([element])->toEqual(result)
				})
			})
			describe("non-zero", () => {
				let index = 4 
				let result = arr->Array.insert(element, index)
				test("returns source", () => {
					expect(arr)->toEqual(result)
				})
			})
		})	
		describe("non-empty", () => {
			let arrays = [("two element", ["a", "b"]), ("many element", ["a","b","c","d","e"])]
			arrays->Js.Array2.forEach(((desc, arr)) => {
				describe(desc, () => {
					describe("negative index", () => {
						let index = -1
							let result = arr->Array.insert(element, index)
							test("returns source", () => {
								expect(arr)->toEqual(result)
							})
					})
					describe("> length", () => {
						let index = arr->Js.Array2.length
						let result = arr->Array.insert(element, index)
						test("returns source", () => {
							expect(arr)->toEqual(result)
						})
					})
					let indices = @doesNotRaise [0, arr->Js.Array2.length-1, arr->Js.Array2.length/2]
					indices->Js.Array2.forEach( (index) => {
						describe(`insert ${index->Belt.Int.toString}`, () => {
							let result = arr->Array.insert(element, index)
							test("does not mutate source", () => {
								expect(arr)->not->toEqual(result)
							})
							test("inserts element", () => {
								expect(result[index])->toEqual(Some(element))
							})
							test("moves index element rightward", () => {
								expect(result[index+1])->toEqual(arr[index])
							})
							test("increases length by 1", () => {
								expect(result->Js.Array2.length)->toEqual(arr->Js.Array2.length + 1)
							})
						})
					})
				})
			})
		})
	})
	describe("#remove", () => {
		describe("non-empty", () => {
			let arrays = [("two element", ["a", "b"]), ("many element", ["a","b","c","d","e"])]
			arrays->Js.Array2.forEach(((desc, arr)) => {
				describe(desc, () => {
					describe("negative index", () => {
						let index = -1
							let result = arr->Array.remove(index)
							test("returns source", () => {
								expect(arr)->toEqual(result)
							})
					})
					describe("> length", () => {
						let index = arr->Js.Array2.length+5
						let result = arr->Array.remove(index)
						test("returns source", () => {
							expect(arr)->toEqual(result)
						})
					}) 
				})
			})
		})
	})
})
