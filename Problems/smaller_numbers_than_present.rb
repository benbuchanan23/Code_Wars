def smaller_numbers_than_current(array)
  unique = array.uniq
  
  results = []
  count = 0

  loop do 
  array.each do |number|
    unique.each do |n|
      if number > n 
        count += 1
      end
    end
    results << count
    count = 0 
  end
  
    
    break if results.size >= array.size
end

p results
end


p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]