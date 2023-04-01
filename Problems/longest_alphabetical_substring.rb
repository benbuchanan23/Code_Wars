def longest(string)
  results = []
  substring = []
array = string.chars
array.each do |letter|
  if substring.empty? 
    substring << letter
  elsif substring.last.ord <= letter.ord
    substring << letter
  elsif substring.last.ord > letter.ord && substring.size > results.size
    results = substring
    substring = [letter]
  elsif substring.last.ord > letter.ord && substring.size <= results.size
    substring = [letter]
  end
end

if substring.size > results.size
  results = substring
end
  results.join
end



p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'
