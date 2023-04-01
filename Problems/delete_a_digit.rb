def delete_digit(integer)
  array = integer.digits.reverse
  options = []
  array.combination(array.size - 1) do |substring|
    options << substring.join.to_i
  end
  
  options.max
  end
  
  
  p delete_digit(152) == 52
  p delete_digit(1001) == 101
  p delete_digit(10) == 1
  