def word_pattern(template, string)
  template_array = template.chars
  string_array = string.split(' ')

  alphabet = ('a'..'z').to_a
  unique_array = string_array.uniq
  indexes = string_array.map.with_index do |word, index|
    alphabet[unique_array.index(word)]
  end

    if indexes.join == template
      true
    else
      false
    end
  
end

p word_pattern("aa", "aaa") == false
p word_pattern("abba", "dog cat cat dog") == true
p word_pattern("abba", "dog cat cat fish") == false
p word_pattern("abbc", "dog cat cat fish") == true
p word_pattern("","") == true
p word_pattern("abcdefbag", "this is a scalable test case is this true") == true
p word_pattern("aaaa", "dog cat cat dog") == false
