
def missing_letter(array)
  lower_alphabet = ('a'..'z').to_a
  upper_alphabet = ('A'..'Z').to_a
  alphabet = lower_alphabet + upper_alphabet
  
  chunk = array.size + 1
  chunk_array = []
  
  alphabet.each do |letter, index|
    if (array[0].upto(array[-1])).include?(letter)
    chunk_array << letter
    end
  end
  
  p [chunk_array - array].join
  end
  
  
  p missing_letter(["a","b","c","d","f"]) == "e"
  p missing_letter(["O","Q","R","S"]) == "P"
  