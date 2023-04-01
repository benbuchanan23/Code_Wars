def find_the_difference(string1, string2)
  array1 = string1.chars
  array2 = string2.chars
  difference = array2 - array1
  difference.join
  end
  
  
  p find_the_difference("aaa", "abaac") == "bc"
  p find_the_difference("","") == ""
  p find_the_difference("abc", "azbscd") == "zsd"
  p find_the_difference("", "abc") == "abc"
  p find_the_difference("abcde", "") == ""
  p find_the_difference("y", "yz") == "z"
  p find_the_difference("abc", "abc") == ""
  