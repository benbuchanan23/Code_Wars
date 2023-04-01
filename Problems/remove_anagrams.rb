def remove_anagrams(array)
  results = [] 
  
  array.each do |word|
    if results.empty?
      results << word
    elsif word.chars.sort == results.last.chars.sort
      next
    else 
      results << word
    end
  end
  
  results
  end
  
  p remove_anagrams(["bat","tab","all","tea","eat"]) == ["bat","all","tea"]
  p remove_anagrams(['a','b','c','d','e']) == ['a','b','c','d','e']
  p remove_anagrams(["dog", "god"]) == ["dog"]
  p remove_anagrams(["abba","baba","bbaa","cd","cd"]) == ["abba","cd"]
  p remove_anagrams(["day","tina", "anit","house","note", "tone"]) == ["day","tina","house","note"]
  