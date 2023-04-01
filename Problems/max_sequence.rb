def max_sequence(array)
  possible_results = []
  
  negatives = []
  array.each do |element|
    if element < 0
      negatives << element
    end
  end
  
  
  if array == [] || negatives.size == array.size
    return 0 
  end
  
  count = 1
  loop do 
    array.each_cons(count) do |element|
      possible_results << element.inject(:+)
    end
    break if count == array.size
    count += 1
  end
  
    possible_results.max
  end
  
  
  p max_sequence([]) == 0
  p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
  p max_sequence([11]) == 11
  p max_sequence([-32]) == 0
  p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12