def remove_duplicates(string)

  results = []
    string.each_char do |letter|
      letter == results[-1] ? results.pop : results.push(letter)
    end
     results.join
  end
  
  
  
  p remove_duplicates("aaybbyz") == "z"
  p remove_duplicates("a") == "a"
  p remove_duplicates("abbca") == "aca"
  p remove_duplicates("aabbcc") == ""
  p remove_duplicates("aderg") == "aderg"
  p remove_duplicates("azxxzy") == "ay"
  p remove_duplicates("abbaca") == "ca"
  