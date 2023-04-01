#P: Given an array of numbers return a hash with the unique values of the array as the keys and the count of those values as the values. 
#E: [1, 1, 2, 2, 2, 3] == {1 => 2, 2 => 3, 3 => 1}
# If the array is empty or contains nil return nil
# If the value does not occur do not add to array

#Algo: 
# Create empty Hash
# If array is empty or contains nil return nil
# Create new array with the unique values from your original array input to get KEYS. 
# Iterate through the unique array and count the number of times that element occurs in the original array to get VALUES. 
# Pass the iteration element into your hash as the key and the count as the value. 

def group_and_count(array)
  results = {}
  
  if array == nil || array.empty? 
    return nil 
  end
  
  unique_array = array.uniq
  
    unique_array.each do |element|
      results[element] = array.count(element)
    end
  
    results
  end
  
  
  p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
  p group_and_count([]) == nil
  p group_and_count(nil) == nil
  p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}
  