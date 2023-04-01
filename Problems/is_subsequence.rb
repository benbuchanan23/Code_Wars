def is_subsequence(string1, string2)
  array1 = string1.chars
  array2 = string2.chars
  comparison = []

  array2.each do |letter|
    if array1.include?(letter) && array1.count(letter) > comparison.count(letter)
      comparison << letter
    end
  end
  
  if array1.join == comparison.join
    true
  else
    false
  end
end


p is_subsequence("aabb", "aabb") == true
p is_subsequence("aaa", "abacba") == true
p is_subsequence("bbb", "abcde") == false
p is_subsequence("axcd", "abxcd") == true
p is_subsequence("axc","ahbgdc" ) == false
p is_subsequence("abc","ahbgdc" ) == true
p is_subsequence("abc","ahbgdc" ) == true
p is_subsequence('abc', 'aabbcc') == true
p is_subsequence('aec', 'abcde') == false