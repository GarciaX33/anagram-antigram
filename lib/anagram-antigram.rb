def palindromes(input1, input2)
    input1 = input1.downcase
    input2 = input2.downcase

    if input1 == input1.reverse
      return "first word is a palindrome"
    end

    if input2 == input2.reverse
      return "second word is a palindrome"
    end

  end
  
  def anagramsInput(input1, input2)
  if input1.scan(/[aeiouy]/).count === 0 || input2.scan(/[aeiouy]/).count === 0
    return "you must use a real word!"
  end

  wordArr1 = input1.downcase.gsub(/\s+/, "").split(//).sort
  wordArr2 = input2.downcase.gsub(/\s+/, "").split(//).sort
  if (wordArr1 != wordArr2)
    return "these words are antigrams"
  end

  if (wordArr1 == wordArr2)
    return "these words are anagrams"
  else
    return "these words are not anagrams"
  end

end
end
