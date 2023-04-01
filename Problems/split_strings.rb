def solution(string)
  array = string.chars
  results = []
  substring = []


  if string == ''
    return []
  elsif string.length.even?
    string.chars.each do |letter|
      substring << letter 
      if substring.size == 2
        results << substring.join
        substring = []
      end
  end
  elsif string.length.odd?
    string.chars.each do |letter|
      substring << letter 
      if substring.size == 2
        results << substring.join
        substring = []
      end
      end
      results << "#{substring.join + '_'}"
end
  results
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
