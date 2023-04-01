def is_same_after_reversals(integer)
  reversed = integer.digits.join.to_i
  original = reversed.digits.join.to_i
  
  if original == integer
    true
  else
    false
  end
  
  end
  
  
  p is_same_after_reversals(0) == true
  p is_same_after_reversals(11) == true
  p is_same_after_reversals(158) == true
  p is_same_after_reversals(25879) == true
  p is_same_after_reversals(2500) == false
  p is_same_after_reversals(11150) == false
  