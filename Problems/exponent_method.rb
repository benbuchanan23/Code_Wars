#Algo: 
# Iterate through the array[0] 
# If the letter is included in array[1] && array[2] then << []

def common_chars(array)
results = []

first_element = []
array.each_with_index do |element, index|
  if index == 0 
    first_element << element
  end
end

p first_element
end


p common_chars(["bella","label","roller"]) == ["e","l","l"]
p common_chars(["cool","lock","cook"]) == ["c","o"]
p common_chars(["car", "racecar", "rat"]) == ["a","r"]
p common_chars(["abc", "def","hij"]) == []

  