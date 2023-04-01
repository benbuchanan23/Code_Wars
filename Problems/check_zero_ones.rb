#P: Given a string of "1"s and "0"s return a boolean true or false. 
# Return true if the max number of consecutive ones is greater than the max number of consecutive 0s
# If not return false

#E: 
# "110" 1 = 2; 0 = 1

#Rules
# max 1s must be greater; if <= to number of consecutive 0s then return false
# If there are no 0s return true
# If there are no 1s return false

#Algo: 
# Create array of 1 sums
# Create 1 sum count
# Create array of 0 sums
# Create 0 sum count
# Iterate through the string chars in array
# If the character is a "1"  add to count 1
# If the character is a "0" add to count 0 

def check_zero_ones(string)
  array_of_ones_totals = []
  array_of_zeroes_totals = []
  ones = 0 
  zeroes = 0 

  string.chars.each do |number|
    if number == "1"
      ones += 1 
    else
      array_of_ones_totals << ones
      ones = 0
    end
  end
  array_of_ones_totals << ones
  max_ones = array_of_ones_totals.max

  string.chars.each do |number|
    if number == "0"
      zeroes += 1 
    else
      array_of_zeroes_totals << zeroes
      zeroes = 0
    end
  end
  array_of_zeroes_totals << zeroes
  max_zeroes = array_of_zeroes_totals.max

  if max_zeroes >= max_ones 
    false
  else
    true
  end
end


p check_zero_ones("110") == true
p check_zero_ones("0011") == false
p check_zero_ones("1") == true
p check_zero_ones("0") == false
p check_zero_ones("110100010") == false
p check_zero_ones("1101") == true
p check_zero_ones("11010111100") == true
