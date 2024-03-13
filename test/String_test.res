open Vitest

describe("String", () => {
	describe("get", () => {
		describe("positive", () => {
			it("should return the character at the given index", () => {
				expect("hello"->String.get(0))->toBe(Some("h"))
				expect("hello"->String.get(1))->toBe(Some("e"))
				expect("hello"->String.get(2))->toBe(Some("l"))
				expect("hello"->String.get(3))->toBe(Some("l"))
				expect("hello"->String.get(4))->toBe(Some("o"))
			})
			describe("out of bounds", () => {
				it("should return None", () => {
					expect("hello"->String.get(5))->toBe(None)
				})
			})
		})
		describe("negative", () => {
			it("should return the character at the given one-based index", () => {
				expect("hello"->String.get(-1))->toBe(Some("o"))
				expect("hello"->String.get(-2))->toBe(Some("l"))
				expect("hello"->String.get(-3))->toBe(Some("l"))
				expect("hello"->String.get(-4))->toBe(Some("e"))
				expect("hello"->String.get(-5))->toBe(Some("h"))
			})
			describe("out of bounds", () => {
				it("should return None", () => {
					expect("hello"->String.get(-6))->toBe(None)
				})
			})
		})
	})
})