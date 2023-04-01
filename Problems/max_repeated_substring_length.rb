def max_repeated_substring_length(string)
  array_of_sums = []
  one_letter = []
  
    string.chars.each do |letter|
      if one_letter.empty?
        one_letter << letter
      elsif one_letter.last == letter
        one_letter << letter
      else
        array_of_sums << one_letter.size
        one_letter = [letter]
      end
    end
    array_of_sums << one_letter.size
    
    if array_of_sums.max >= 2
      array_of_sums.max
    else
      return 0 
    end
  end
  
  
  p max_repeated_substring_length("aappplee") == 3
  p max_repeated_substring_length("abbcccddddeeeeedcba") == 5
  p max_repeated_substring_length("abcd") == 0
  p max_repeated_substring_length("greencode") == 2
  p max_repeated_substring_length("rruunn") == 2
  