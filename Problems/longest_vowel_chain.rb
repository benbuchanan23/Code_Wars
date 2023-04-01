def solve(string)
  results = []
  longest_string = []
  
  array = string.chars 
  array.each do |letter|
    if ('aeiou').include?(letter)
      longest_string << letter
    else
      results << longest_string.size
      longest_string = []
    end
  end
  
    results << longest_string.size
    p results.max
  end
  
  p solve("codewarriors") == 2
  p solve("suoidea") == 3
  p solve("iuuvgheaae") == 4
  p solve("ultrarevolutionariees") == 3
  p solve("strengthlessnesses") == 1
  p solve("cuboideonavicuare") == 2
  p solve("chrononhotonthuooaos") == 5
  p solve("iiihoovaeaaaoougjyaw") == 8
  