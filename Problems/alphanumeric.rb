def alphanumeric?(string)
  string.delete!('_')
  if string == ''
    false
  elsif string.split(' ').join == string
    true
  else
    false
  end
  end
  
  p alphanumeric?("") == false
  p alphanumeric?("hello world_") == false
  p alphanumeric?("HELLOworld123") == true