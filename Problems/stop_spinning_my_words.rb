#P: Given a string of one or more words, return the same string with all words 5 or more letters in length reversed. 
#E: "Hey fellow warriors" == "Hey wollef sroirraw"
#Algo: 
# Create an array of the words in the sentence split by spaces 
# Iterate through the array and check word length 
# If word length is >= 5 then reverse the word
# Otherwise leave the word alone

def spinWords(string)
  array = string.split(' ')
  results = array.map do |word|
    if word.length >= 5 
      word.reverse
    else
      word
    end
  end
  
    results.join(' ')
  end
  
  p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
  p spinWords("This is a test") == "This is a test" 
  p spinWords("This is another test") == "This is rehtona test"
  p spinWords("test") == "test"
  