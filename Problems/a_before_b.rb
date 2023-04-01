#P: Given a string of "a"s and "b's all lowercase, return a boolean (true/false)
#True if all "a"s come before "b"s false otherwise. 
# If string consists only of 'a' return true
# If string consists only of 'b' return false

#Algo: 
# Create empty array
# Iterate through the string as an array and place letters into empty array
# If last letter = b and letter is a return false

def check_string(string)
  new_array = []
  array = string.chars
  
  count = 0 
  loop do 
    new_array << array[count]
    if new_array.last == 'b' && array[count + 1] == 'a'
      return false
    end
    count += 1
    break if new_array.size == string.length
  end
  
   if new_array.include?("a")
    true
   else
    false
   end
  end
  
  
  p check_string("aba") == false
  p check_string("aaa") == true  
  p check_string("aabb") == true
  p check_string("abab") == false
  p check_string("aaabbb") == true
  p check_string("bbb") == false
  