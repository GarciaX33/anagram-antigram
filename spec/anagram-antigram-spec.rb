require 'rspec'
require './lib/anagram-antigram.rb'

describe("String#is_a_word?") do
  let(:word) { String.new }
  it("returns false if word has no length") do
    expect(word.is_a_word?("", "a")).to(eq(false))
  end
  it("returns true if has length") do
    expect(word.is_a_word?("DRINK", "WINE")).to(eq(true))
  end
  it("returns true if has a vowel") do
    expect(word.is_a_word?("EAT", "GLUE")).to(eq(true))
  end
  it("returns false if has no vowel") do
    expect(word.is_a_word?("zzz", "zqj")).to(eq(false))
  end

end
