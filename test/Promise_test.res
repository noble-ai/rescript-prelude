open Vitest

describe("Promise", () => {
	describe("#const", () => {
		// Some new value we're interested int
		let val = "hello"
		// A promise yielding something we are not interested in
		let promise = Promise.return(3)
		let res = promise->Promise.const(val)
		itPromise("should yield val", () => {
			res->Promise.tap((v) => {
				expect(v)->toBe(val)
			})
		})
	})

	describe("#sequence", () => { 
		let ins = [1,2,3]
		// Sleep a while to be async. could be random
		let fn = a => Promise.sleep(10)->Promise.const(a)
		let res = Promise.sequence(ins, fn)
		itPromise("returns ins in order", () => {
			res->Promise.tap(res => expect(res)->toEqual(ins))
		})
	})
})