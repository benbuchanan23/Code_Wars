def closest_numbers(array)
  results = []
  differences = array.max

  array.combination(2) do |substring|
    if substring.inject(:-).abs < differences 
      differences = substring.inject(:-).abs
      results = substring
    end
  end

  p results
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]