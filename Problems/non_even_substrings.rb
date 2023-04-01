def solve(string)
  results = []
array = string.to_i.digits.reverse
count = 1
loop do 
  array.each_cons(count) do |substring|
    if substring.join.to_i.odd?
      results << substring.join.to_i
    end
  end
  count += 1 
  break if count > array.size
end
  results.count
end


p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
