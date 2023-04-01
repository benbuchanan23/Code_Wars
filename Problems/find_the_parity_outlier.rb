def parity(array)
  evens = []
  odds = []
  
  array.each do |integer|
    if integer.odd?
      odds << integer
    else
      evens << integer
    end
  end
  
    if evens.size == 1
      return evens.join.to_i
    else
      return odds.join.to_i
    end
  end
  
  
  p parity([2, 4, 0, 100, 4, 11, 2602, 36]) == 11
  p parity([160, 3, 1719, 19, 11, 13, -21]) == 160
  