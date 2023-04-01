def least_common_char(string)
  string.downcase!
  array = string.chars
  unique_array = array.uniq
  result = ''

  unique_array.reverse. each do |letter|
    if result == ''
      result = letter
    elsif array.count(result) >= array.count(letter)
      result = letter
    end
  end

  result
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'