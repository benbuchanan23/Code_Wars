def length_of_longest_substring(string)
  longest = 0 
  if string.empty?
    return '' 
  end
  
  array = string.chars
  1.upto(array.size) do |n|
    array.each_cons(n) do |substring|
      if substring.sort == substring.uniq.sort && substring.size > longest
        longest = substring.size
      end
    end
  end

  longest
end


p length_of_longest_substring('aaaabbcba') == 3
p length_of_longest_substring('aaaaaa') == 1
p length_of_longest_substring('pwwkea') == 4
p length_of_longest_substring('') == ''
p length_of_longest_substring('a') == 1
p length_of_longest_substring('robtuunop') == 5
p length_of_longest_substring('tucccaassaa') == 3
