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

    it('inspects to see if either of the words are real') do
        expect(ex.anagramsInput("hello", "rd")).to(eq("you must use a real word!"))
      end

        it('inspects multiples words in the input') do
      expect(ex.anagramsInput("race car", "car race")).to(eq("these words are anagrams"))
    end
    it('inspects to see if two words are anagrams') do
    expect(ex.anagramsInput("eat", "tea")).to(eq("these words are anagrams"))
  end
