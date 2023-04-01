def reverse_arr(array)
  results = []
  count = -1
  loop do 
    results << array[count]
    count -= 1
    break if count < -(array.size)
  end

  results
end



p reverse_arr(["a","b","c","d"]) == ["d", "c","b","a"]
p reverse_arr(["h","e","l","l","o"]) == ["o","l","l","e","h"]
p reverse_arr(["H","a","n","n","a","h"]) == ["h","a","n","n","a","H"]
p reverse_arr([1,2,3,4,5,6]) == [6,5,4,3,2,1]
p reverse_arr(["a",1,"b",2]) == [2,"b",1,"a"]
