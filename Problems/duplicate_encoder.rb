def duplicate_encode(string)
  results = [] 
  s = string.downcase
  array = s.chars
  array.each do |letter|
  
    if array.count(letter) >= 2
      results << ")"
    elsif array.count(letter) < 2
      results << "("
    end
  end
  
    p results.join
  end
  
  p duplicate_encode("din") == "((("
  p duplicate_encode("recede") == "()()()"
  p duplicate_encode("Success") == ")())())"
  p duplicate_encode("(( @") == "))(("
  