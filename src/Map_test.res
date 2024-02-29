open! Vitest

module ToStringTuple = {
	type t = (int ,int)
	let toString = (t: t) => {
			let (a, b) = t
			`(${a->Int.toString},${b->Int.toString})`
	}
}
module MapTuple = Map.Complex(ToStringTuple)

describe("Map", () => {
	describe("#make", () => {
		let map = Map.make()
		it("correct size", () => {
			expect(map->Map.size)->toBe(0)
		})
		it("correct keys", () => {
			expect(map->Map.keys->Array.fromIterable)->toEqual([])
		})
		it("correct values", () => {
			expect(map->Map.values->Array.fromIterable)->toEqual([])
		})
		it("correct entries", () => {
			expect(map->Map.entries->Array.fromIterable)->toEqual([])
		})
	})

   describe("#fromIterable", () => {
			let value = Map.fromIterable([("a", 1), ("b", 2)]->Array.toIterable)
			it("get", () => {
				 expect(value->Map.get("a"))->toBe(Some(1))
				 expect(value->Map.get("b"))->toBe(Some(2))
				 expect(value->Map.get("c"))->toBe(None)
			})
			it("correct size", () => {
				 expect(value->Map.size)->toBe(2)
			})
			it("correct keys", () => {
				 expect(value->Map.keys->Array.fromIterable)->toEqual(["a", "b"])
			})
			it("correct values", () => {
				 expect(value->Map.values->Array.fromIterable)->toEqual([1, 2])
			})
			it("correct entries", () => {
				 expect(value->Map.entries->Array.fromIterable)->toEqual([("a", 1), ("b", 2)])
			})
			it("correct has", () => {
				 expect(value->Map.has("a"))->toBe(true)
				 expect(value->Map.has("b"))->toBe(true)
				 expect(value->Map.has("c"))->toBe(false)
			})

			describe("#reduce", () => {
				it("correct reduce", () => {
					expect(value->Map.reduce((acc, _key, value) => acc + value, 0))->toBe(3)
				})
			})
	 })

	 describe("Complex", () => {
			let value = MapTuple.fromIterable([((1, 2), 1), ((3, 4), 2)]->Array.toIterable)
			it("get", () => {
				 expect(value->MapTuple.get((1, 2)))->toBe(Some(1))
				 expect(value->MapTuple.get((3, 4)))->toBe(Some(2))
				 expect(value->MapTuple.get((5, 6)))->toBe(None)
			})
			it("correct size", () => {
				 expect(value->MapTuple.size)->toBe(2)
			})
			it("correct keys", () => {
				 expect(value->MapTuple.keys->Array.fromIterable)->toEqual([(1, 2), (3, 4)])
			})
			it("correct values", () => {
				 expect(value->MapTuple.values->Array.fromIterable)->toEqual([1, 2])
			})
			it("correct entries", () => {
				 expect(value->MapTuple.entries->Array.fromIterable)->toEqual([((1, 2), 1), ((3, 4), 2)])
			})
			it("correct has", () => {
				 expect(value->MapTuple.has((1, 2)))->toBe(true)
				 expect(value->MapTuple.has((3, 4)))->toBe(true)
				 expect(value->MapTuple.has((5, 6)))->toBe(false)
			})

			describe("#reduce", () => {
				it("correct reduce", () => {
					expect(value->MapTuple.reduce((acc, _key, value) => acc + value, 0))->toBe(3)
				})
			})
	 })
})