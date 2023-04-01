#P: Given a string of 1's and 0's return the number of substrings that have an equal number of 0's and 1's within it. 

#E: "00110011" 
# 0, 0, 1, 1, 0, 0, 1, 1
# 00, 01, 11, 10, 00, 01, 11
# 001, 011, 
# 0011, 0110, 1100, 1001, 0011

def count_binary_substrings(string)
  results = []
array = string.chars
2.upto(string.length / 2) do |n|
  array.each_cons(n) do |substring|
    if substring.size.even?
      results << substring.join
    end
  end
end

new_results = results.select do |number|
  number.include?('1') && number.include?('0')
end

final_results = []
 new_results.each do |number|
    if number == number.chars.sort.join || number == number.chars.sort.reverse.join
      final_results << number
    end
end

p final_results.size
end

p count_binary_substrings("00110011") == 6
p count_binary_substrings("10101") == 4
p count_binary_substrings("01101100") == 5
p count_binary_substrings("1") == 0
