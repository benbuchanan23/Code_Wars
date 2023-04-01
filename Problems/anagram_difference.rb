def anagram_difference(string1, string2)
  sorted_string1 = string1.chars.sort.join
  sorted_string2 = string2.chars.sort.join
  count = 0
  if string1.length > string2.length
    bigger = string1.length
  else
    bigger = string2.length
  end
  
  loop do 
    if sorted_string1.length == sorted_string2.length && sorted_string1 ==   sorted_string2
      return count 
      break
    elsif sorted_string1.length == sorted_string2.length && sorted_string1 !=   sorted_string2
      sorted_string1.chop
      sorted_string2.chop
      count += 1
      break if count >= bigger
    elsif sorted_string1.length > sorted_string2.length
      sorted_string1.chop!
      count += 1
    elsif sorted_string1.length < sorted_string2.length
      sorted_string2.chop!
      count += 1
      end
    end
  
    count
  end
  
  p anagram_difference('', '') == 0
  p anagram_difference('a', '') == 1
  p anagram_difference('', 'a') == 1
  p anagram_difference('ab', 'a') == 1
  p anagram_difference('ab', 'ba') == 0
  p anagram_difference('ab', 'cd') == 4
  p anagram_difference('aab', 'a') == 2
  p anagram_difference('a', 'aab') == 2
  p anagram_difference('codewars', 'hackerrank') == 10
  