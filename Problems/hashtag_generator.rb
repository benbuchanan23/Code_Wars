def generateHashtag(string)
  array = string.split(' ')
  array.map do |element|
    element.capitalize!
  end
  
  if array.empty?
    return false
  elsif array.join.size >= 140
    return false
  else
    array.join.prepend('#')
  end
  end
  
  p generateHashtag("") == false
  p generateHashtag(" " * 200) == false
  p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
  p generateHashtag("Codewars") == "#Codewars"
  p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
  p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
  p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
  p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
  p generateHashtag("a" * 139) == "#A" + "a" * 138
  p generateHashtag("a" * 140) == false
  