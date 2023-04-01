def high(string)
  alphabet = ('a'..'z').to_a 
  array = string.split(' ')
  
  highest_scoring_word = 0 
  results = '' 
  array.each do |word|
    word_scores = word.chars.map do |letter|
      (alphabet.index(letter) + 1)
    end
   
    if word_scores.sum > highest_scoring_word
      highest_scoring_word = word_scores.sum
      results = word
    end
  end
  
  results
  end
  
  
  p high('man i need a taxi up to ubud') == 'taxi'
  p high('what time are we climbing up the volcano') == 'volcano'
  p high('take me to semynak') == 'semynak'
  p high('aaa b') == 'aaa'