#P: Given a string in Camel case, return the same string in Kebab case, where every word is lower case, there are no characters that aren't letters and each word is separated by a dash. 

#E: Input = 'myCamelHas3Humps' == Output = 'my-camel-has-humps'

#Algo: 
# Delete anything that is not a letter
# Separate string into separate words by including space before capital letters to create array of words
# Iterate through the string as an array and pass letters into a new array if the letter is uppercase pass in a space and the letter lowercased
# Lowercase all the words 
# Join all the lowercase words with a dash

def kebabize(camel)
  array = []
  camel.delete!('^a-zA-Z')
  clean_array = camel.chars
  clean_array.each do |letter|
    if letter != letter.upcase 
      array << letter
    else
      array << " " << letter.downcase
    end
  end
  
  lower_case_sentence = array.join
  lower_case_array = lower_case_sentence.split(" ")
  lower_case_array.join('-')

end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
