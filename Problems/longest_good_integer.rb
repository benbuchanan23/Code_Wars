def largest_good_integer(string)
  good_strings = ["000", "111", "222", "333", "444", "555", "666", "777", "888", "999"]
  results = []

  array = string.chars
  array.each_with_index do |element, index|
    if good_strings.include?((array[index..(index + 2)]).join)
      results << (array[index..(index + 2)]).join
    end
  end

  if results.empty?
     ''
  else
     results.max
  end
end

p largest_good_integer('13455587222') == "555"
p largest_good_integer('456987') == ""
p largest_good_integer("11458000") == "000"
p largest_good_integer("111") == "111"
p largest_good_integer("111222333444555666") == "666"
p largest_good_integer("42352338") == ""
