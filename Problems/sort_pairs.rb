def sort_pairs(array)
  front = 0 
  back = 1
results = []

  loop do 
    results << array[front..back].reverse
    front += 2
    back += 2
    break if back >= array.size
  end

  p results.flatten
end

p sort_pairs([1,2,3,4]) == [2,1,4,3]
p sort_pairs([]) == []
p sort_pairs([1]) == [1]
p sort_pairs([4,6,8,10,4,12]) == [6,4,10,8,12,4]
