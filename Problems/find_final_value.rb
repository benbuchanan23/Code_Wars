def find_final_value(array, integer)
  
  loop do 
    if array.include?(integer)
      new_value = integer * 2
      array.delete(integer)
      integer = new_value
    else
      return integer
    break
    end
    end
  
  end
  
  
  p find_final_value([5,4,7], 1) == 1
  p find_final_value([5], 5) == 10
  p find_final_value([5,3,6,1,12], 3) == 24
  p find_final_value([0,0,0], 0) == 0
  p find_final_value([5,7,8,0], 0) == 0
  