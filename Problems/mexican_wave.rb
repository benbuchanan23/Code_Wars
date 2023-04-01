def wave(string)
  result = []
  array = string.downcase.chars
  array.each_with_index do |letter, index|
    next if letter == ' '
    result << string[0...index] + letter.upcase + string[index + 1..-1]
  end
  
  p result
  end
      
      p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
      p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
      p wave("") == []
      p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
      p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
    