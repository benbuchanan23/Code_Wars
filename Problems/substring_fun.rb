def nth_char(array)
  if array.empty?
    return '' 
  end
string = '' 
count = 0 
  loop do 
    string << array[count][count]
    count += 1
    break if count >= array.size
  end

string
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
