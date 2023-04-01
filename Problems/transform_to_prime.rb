#P: Given an array of numbers find how many numbers you would have to add to teh sum of the array in order to get to a prime number. If the array already sums to a prime number return 0 

#E: [3, 1, 2] sum = 6 (*need to add 1 to get 7 which is prime)
#What is prime? If number is only divisible by 1 or itself

#Algo: 
# Define prime: if number divided by 2 upto number -1 should all not be equal to zero
# If sum of array is prime return 0 
# Otherwise add 1 to sum and recheck if prime
# Keep track of count to see how much is added to original array. 

def minimum_number(array)
  count = 0
  sum = array.sum
  loop do 
      if is_prime?(sum) == true
        return count
      else
        sum += 1
        count += 1
      end
    end
  end
  
  def is_prime?(number)
    denominators = (2...number).to_a
    check = []
  
    denominators.each do |denom|
      if number % denom != 0 
        check << true
      else
        check << false
      end
    end
  
    if check.include?(false)
      return false
    else 
      return true
    end
  end
  
  p minimum_number([3,1,2]) == 1
  p minimum_number([5,2]) == 0
  p minimum_number([1,1,1]) == 0
  p minimum_number([2,12,8,4,6]) == 5
  p minimum_number([50,39,49,6,17,28]) == 2
  