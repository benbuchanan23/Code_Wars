def get_char_count(string)
  clean_string = string.downcase.delete('^a-z0-9')
  array = clean_string.chars.uniq.sort
  new_array = array.group_by do |letter|
    clean_string.count(letter)
  end
  p new_array.sort.reverse.to_h
  end
  
  p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
  p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
  p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
  p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
  p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
  