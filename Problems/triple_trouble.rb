#P: Given two numbers, return 1 if the first number contains 3 of the same number in a row AND the second number has 2 in a row of the same number. 

#E: triple_double(12345, 12345) == 0 (no triples in the first number)

# Algo: 
# Create an empty array 
# Iterate through the first string as an array and pass in numbers 
# If the number is different than the first element  in the array than the number takes its spot, otherwise we add numbers until array size is 3 
# Extract the number that occurs 3x otherwise output 0 
# Iterate through the second string as an array and pass in numbers 
# If the number is different than the first element  in the array than the number takes its spot, otherwise we add numbers until array size is 2
# extract that number if the two numbers are the same output 1 else 0 

def triple_double(integer1, integer2)
  triple = []
  double = []
  triple_numbers = integer1.digits.reverse
  double_numbers =  integer2.digits.reverse

  triple_numbers.each do |number|
    if triple.empty?
      triple << number
    elsif triple[-1] != number && triple.size < 3
      triple = []
      triple << number
    elsif triple[-1] == number
      triple << number
    end
  end
    if triple.size >= 3 
      p triple[0]
    else
      return 0 
  end

  double_numbers.each do |number|
    if double.empty?
      double << number
    elsif double[-1] != number && double.size < 2 && number == triple[0]
      double = []
      double << number
    elsif double[-1] == number && number == triple[0]
      double << number
    elsif double.size >= 2
      double[0]
    else 
      return 0 
    end
  end

  if triple[0] == double[0]
    return 1 
  else
    return 0 
  end
end


p triple_double(12345, 12345) == 0
p triple_double(666789, 122345667) == 1
