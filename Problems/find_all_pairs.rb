def pairs(array)
  if array.size == 0 || array.size == 1
    return 0 
  end

  results = {}
  unique_array = array.uniq
  unique_array.each do |number|
     if array.count(number) > 1
      results[number] = array.count(number)
     end
  end

  p results.values.inject(:+) / 2

end

# or 

def pairs(array)
  count = 0 
  pair = []
  
  array.sort.each do |number|
    if pair.empty?
      pair << number
    elsif pair.last != number
      pair = [number]
    elsif pair.last == number
      pair << number
      count += 1
      pair = []
    end
  end
  
  p count
  end


p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0