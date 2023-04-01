def scramble(string1, string2)
  size = string2.length 
  modified_string1 = []
  
  string1.chars.each do |letter|
    if string2.chars.include?(letter) && string2.chars.count(letter) > modified_string1.count(letter)
      modified_string1 << letter
    end
  end
  
  sorted2 = string2.chars.sort
  
    if modified_string1.sort == sorted2
      true
    else
      false
    end
  end
  
  p scramble('rkqodlw','world') == true
  p scramble('cedewaraaossoqqyt','codewars') == true
  p scramble('katas','steak') == false 
  p scramble('scriptjava','javascript') == true
  p scramble('scriptingjava','javascript') == true