class String
  def is_a_word?(input1, input2)
    if input1.length !=0 && input1.match((/[AEIOUY]+/i)) &&
      input2.length != 0 && input2.match((/[AEIOUY]+/i))
      true
    else
      false
    end
  end
  def anagram?(input1, input2)
    input1= input1.downcase.gsub(/\s+/, "").split("").sort!
    input2 = input2.downcase.gsub(/\s+/, "").split("").sort!
    input1==input2
  end
  def antigram?(input1, input2)
    antigram_array = []
    input1 = input1.downcase.gsub(/\s+/, "").split("")
    input2= input2.downcase.gsub(/\s+/, "")
    input1.each do |char|
      antigram_array.push(input2.index(char) == nil)
    end
    !antigram_array.include?(false)
  end
  def palindrome?(input1, input2)
    input1 = input1.downcase.gsub(/\s+/, "")
    input2= input2.downcase.gsub(/\s+/, "")
    input1.reverse == input2
  end
end
