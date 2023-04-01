#P: Given a hash, whose keys are RANKS and whose values are HONOR, return the integer value of the rank of the user who has the closest RANK and HONOR. 
#E: {1=> 3, 3=> 3, 5=> 1} == 3
# If two key/value differences are the same output the lower key

#Algo: 
# Create a 0 count for the differences 
# Create an empty array for storing keys
# Iterate through hash comparing the key to value and obtaining the differnce of the two integers. 
# Pass differnce into 0 count if the differnce is smaller it takes place of count
# Pass the key of the smaller differnce into the empty array
# If the 0 count is replaced replace the key in the array, if the amount is equal pass in the key to the array
# Obtain smallest number within the results array. 

def nexus(hash)
  results = []
  count = 10000
  
    hash.each do |key, value|
      difference = (key - value).abs
      if difference < count 
        count = difference
        results = key
      end 
    end
  
    p results
  end
  p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
  p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
  p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2
  