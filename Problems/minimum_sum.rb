#P: Given an array of positive or negative integers return the lowest sum achieved by adding 5 consecutive numbers of the array together. If the array does not include 5 integers return nil

#E: [1, 2, 3, 4] == nil (<5 integers)
# [1, 2, 3, 4, 5, 6] == first 5 == 15; second 5 == 20 (smallest being 15) == return 15

#Algo: 
# If array size is <= 4 return nil
# Create empty array for sums
# Iterate through each consecutive 5 integers 
# calculate sum of these 5 integers and pass this sum to empty array of sums
# Sort sums array and output lowest sum

def minimum_sum(array)
  if array.size <= 4
    return nil 
  end
  sums = []
  array.each_cons(5) do |substring|
    sums << substring.inject(:+)
  end
  
  p sums.min
  end
  
  
  p minimum_sum([1, 2, 3, 4]) == nil
  p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
  p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
  p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10