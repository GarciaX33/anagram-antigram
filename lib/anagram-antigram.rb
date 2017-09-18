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
