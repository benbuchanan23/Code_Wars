def find_closest_number(array)
  current = 0 
  array.each do |number|
    if current == 0 
      current = number
    elsif number > 0 && current > 0 && number < current 
      current = number
    elsif number > 0 && current < 0 && number < (current * -1)
      current = number
    elsif number < 0 && current > 0 && (number * -1) < current 
      current = number
    elsif number < 0 && current < 0 && (number * -1) < (current * -1)
      current = number
    end
  end
    current
  end
  
  p find_closest_number([3,7,14,1,-1]) == 1
  p find_closest_number([2,5,7,-1]) == -1
  p find_closest_number([4,26,10,3]) == 3
  p find_closest_number([10]) == 10
  p find_closest_number([-4,-2,1,4,8]) == 1
  