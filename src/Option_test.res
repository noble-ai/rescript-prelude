open Vitest

describe("Option", () => {
	describe("liftA", () => {
		describe("with a simple function", () => {
			let f = (x, y) => x * y
			let fapply = Option.liftA2(f)

			describe("given None", () => { 
				let res = fapply(None, None)
				it("returns None", () => {
					expect(res)->toEqual(None)
				})
			})

			describe("given one value", () => { 
				let res = fapply(Some(2), None)
				it("returns None", () => {
					expect(res)->toEqual(None)
				})
			})

			describe("given two values", () => {
				let res = fapply(Some(2), Some(3))
				it("returns Some(f(value))", () => {
					expect(res)->toEqual(Some(6))
				})
			})
		})
	})
})