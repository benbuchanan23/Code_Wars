def first_uniq_char(string)
  if string.empty?
    return -1
  end

array = string.chars
unique_array = array.uniq
unique_array.each do |letter|
  if array.count(letter) == 1
    return array.index(letter)
  else
    next
  end
end
  return -1
end


p first_uniq_char("") == -1
p first_uniq_char("aabccde") == 2
p first_uniq_char("rainbow") == 0
p first_uniq_char("eeaatt") == -1
p first_uniq_char("lovelettuce") == 1
p first_uniq_char("aabb") == -1
