def find_even_index(array)
  left = 0 
  right = array.inject(:+)
  
  array.each_with_index do |element, index|
    right -= element
    if left == right 
      return index
    end
    left += element
  end
  
  -1
  end
  
  p find_even_index([1,2,3,4,3,2,1]) == 3
  p find_even_index([1,100,50,-51,1,1]) == 1
  p find_even_index([1,2,3,4,5,6]) == -1
  p find_even_index([20,10,30,10,10,15,35]) == 3
  p find_even_index([20,10,-80,10,10,15,35]) == 0
  p find_even_index([10,-80,10,10,15,35,20]) == 6
  p find_even_index(Array(1..100)) == -1
  p find_even_index([0,0,0,0,0]) == 0
  p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
  p find_even_index(Array(-100..-1)) == -1
  