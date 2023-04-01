#P: Given a string of words return true if the sentence contains all the letters of the alphabet at least once. Letters can be repeated, but each letter of the alphabet has to appear at least once. 
#E: "The quick brown fox jumps over the lazy dog." 
#Algo: 
# Break down the sentence into only characters, lowercase and in order  in an array
# Compare the broken down sentence to the alphabet array
# If its the same return true, else false

def panagram?(sentence)
  alphabet = ('a'..'z').to_a
  array = sentence.delete('^a-zA-Z').downcase.chars.sort.uniq
  if array == alphabet
    true
  else
    false
  end
end


p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
