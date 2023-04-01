def digital_root(integer)

  loop do 
    result = integer.digits.reverse.inject(:+)
  
  if result >= 10
    integer = result
  else
    return result
    break if result < 10
  end
  end
  end
  
  
  p digital_root(16) == 7 
  p digital_root(456) == 6 
  