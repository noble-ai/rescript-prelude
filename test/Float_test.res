open Vitest

describe("Float", () => {
	describe("#log", () => {
		let res = Float.log(3.)
		it("should return the natural logarithm of a number", () => {
			expect(res)->toBeCloseTo(1.0986122886681098, 3)
		})
	})
	describe("#log2", () => {
		let res = Float.log2(3.)
		it("should return the base 2 logarithm of a number", () => {
			expect(res)->toBeCloseTo(1.5849625007211563, 3)
		})
	})
	describe("#log10", () => {
		let res = Float.log10(3.)
		it("should return the base 10 logarithm of a number", () => {
			expect(res)->toBeCloseTo(0.47712125471966244, 3)
		})
	})
})


