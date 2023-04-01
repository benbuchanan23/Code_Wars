def persistence(integer)
  if integer < 10 
    return 0 
  end

count = 1
loop do 
  array = integer.digits.reverse
  product = array.inject(:*)
  if product < 10
    return count
    break
  else
    count += 1
    integer = product
  end
end
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
