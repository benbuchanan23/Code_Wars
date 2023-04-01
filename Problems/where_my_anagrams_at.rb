def anagrams(key_word, array)
  sorted_key_word = key_word.chars.sort.join
  results = []
  
  sorted_array = array.map do |word|
    word.chars.sort.join
  end
  
  array.each_with_index do |word, index|
    if sorted_array[index] == sorted_key_word
      results << word
    end
  end
  
  p results
  end
  
  
  p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
  p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
  p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
  