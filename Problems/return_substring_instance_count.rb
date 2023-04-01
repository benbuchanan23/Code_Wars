def solution(string, variable)
  array = string.chars
  results = 0 
  
    array.each_cons(variable.length) do |substring|
      if substring.join == variable
        results += 1
      end
    end
  
    results
  end
  
  
  p solution('abcdeb','b') == 2
  p solution('abcdeb', 'a') == 1
  p solution('abbc', 'bb') == 1
  