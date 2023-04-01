def longest_palindrome(string)
  substrings = []
  palindromes = []
  1.upto(string.length) do |number|
    string.chars.each_cons(number) do |substring|
      substrings << substring
  
    end
  end

  substrings.each do |element|
    if element == element.reverse
      palindromes << element.size
    end
  end

   palindromes.max
end

# or 

def longest_palindrome(string)
  array = string.chars
  palindromes = []
  
  2.upto(array.size) do |n|
    array.each_cons(n) do |substring|
      if substring.join == substring.reverse.join
        palindromes << substring
      end
    end
  end
  
  if palindromes.empty?
    p ''
  else
    p palindromes.max_by(&:size).join
  end
  end

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baab1kj12345432133d") == 9

