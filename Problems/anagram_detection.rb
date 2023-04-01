def is_anagram(word1, word2)
  if word1.downcase.chars.sort.join == word2.downcase.chars.sort.join 
    true
  else
    false
  end
end


p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false
