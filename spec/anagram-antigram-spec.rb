require('rspec')
require('anagram-antigram')

describe('Words#palindromes') do
  ex = Input.new()

  it('inspects input to check if a palindrome') do
    expect(ex.palindromes("Ana", "Anlo")).to(eq("first word is a palindrome"))
  end

  it('inspects to see if your second word is a palindrome') do
    expect(ex.palindromes("AnLo", "Ana")).to(eq("second word is a palindrome"))
  end
  describe('Words#anagramsInput') do
    ex = Input.new()
