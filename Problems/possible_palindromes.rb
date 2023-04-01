=begin
# Given a string s, return the longest palindromic substring in s.

# A single character is not considered a palindromic substring.

#Problem: given a string, find the longest substring that is the same forward as it is in reverse

Example: 

"cbbd" => cb = bc, cbb = bbc, cbbd = dbbc, bb = bb, bbc = ddb, bd = db
bb

# Data: array, string, integer

# Algo
- Create an empty array to hold all possible palindromes
- Take the given string, make it an array of characters, and iterate through it
  - Create all possible substrings of that array
  - If the substring is just 1 character, we skip it
  - If the substring is the same forward as it is backwards, we add that to our possible plaindromes
- Find the longest possible palindrome, and return that string, 
  - if the possibles array is empty, return an empty string

=end

def longest_palindrome(string)
  possible_palindromes = []
  2.upto(string.size) do |substr_length|
    string.chars.each_cons(substr_length) do |substr|
      substring = substr.join
      if substring == substring.reverse
        possible_palindromes << substring
      end
    end
  end

  longest_pal = ""

  possible_palindromes.each do |palindrome|
    if palindrome.size > longest_pal.size
      longest_pal = palindrome
    end
  end
  longest_pal
end

p longest_palindrome("babad") == "bab"
p longest_palindrome("cbbd") == "bb"
p longest_palindrome("abcd") == ""
p longest_palindrome("aa") == "aa"
p longest_palindrome("12231221") == "1221"
