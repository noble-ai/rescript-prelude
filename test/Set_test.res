open Vitest

describe("Set", () => {
	describe("array", () => {
		let res = [1,2,3]->Set.fromArray->Set.toArray
		it("preserves order", () => expect(res)->toEqual([1,2,3]))
	})
})