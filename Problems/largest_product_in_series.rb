def greatest_product(string)
  results = []
integer = string.to_i 
array = integer.digits.reverse
array.each_cons(5) do |substring|
  results << substring.inject(:*)
end

  results.max
end


p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
