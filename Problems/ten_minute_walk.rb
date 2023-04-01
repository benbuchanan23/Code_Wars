#P: Given an array of letters (n, s, e, w); return true if there are the same number of e as w and n as s and that together there are 10 total letters in the array. If not return false. 
#E: first example: there are 10 items and n = s

#Algo: 
# If the array size is not 10 then return false
# If array size == 10 && number of n = number s && number of e = number of w then return true 

def is_valid_walk(array)
  if array.size != 10 
    return false
  end
  
  if array.size == 10 && array.count('n') == array.count('s') && array.count('e') == array.count('w')
    return true
  else
    return false
  end
  
  end
  
  p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
  p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
  p is_valid_walk(['w']) == false
  p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
  