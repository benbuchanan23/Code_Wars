def duplicate_count(string)
  if string == ''
    return 0
  end
  s = string.downcase
  results = []
   
  array = s.chars
  array.each do |letter|
    if array.count(letter) >= 2 
      results << letter
    end
  end
  
  if results == []
    return 0 
  else
    results.uniq!.join.length
  end
  end
  
  
  p duplicate_count("") == 0
  p duplicate_count("abcde") == 0
  p duplicate_count("abcdeaa") == 1
  p duplicate_count("abcdeaB") == 2
  p duplicate_count("Indivisibilities") == 2
  