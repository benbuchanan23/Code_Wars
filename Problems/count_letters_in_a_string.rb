#P: Given an array of numbers, output a hash with the keys of the hash as the unique numbers in the array and the values as the number of times those numbers occur in the array. 

#E: [0, 1, 1, 0] == {0=>2, 1=>2}

#Algo 
# Create an empty results hash 
# Find keys to the hash by sorting the array and getting only unique numbers 
# Iterate through the unique numbers and for each unique find the count in the original array 
# Pass the key value pair to the hash 
# Output hash 

def letter_count(string)
  results = {}
  array = string.chars
  unique_letters = string.chars.uniq.sort
  unique_letters.each do |letter|
      results[letter.to_sym] = array.count(letter)
  end
  
  p results
  end
  
  p letter_count('arithmetics') ==  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}