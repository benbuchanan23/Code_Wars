def solve(integer, remove)
  count = []
  array = integer.digits.reverse
  array.combination(array.size - remove) do |subarray|
    if count == []
      count = subarray.join
    elsif count.to_i > subarray.join.to_i
      count = subarray.join
    end
  end
  count
end


p solve(123056,1) == '12056'
p solve(123056,2) == '1056' 
p solve(123056,3) == '056'
p solve(123056,4) == '05'
p solve(1284569,1) == '124569'
p solve(1284569,2) == '12456'
p solve(1284569,3) == '1245'
p solve(1284569,4) == '124'