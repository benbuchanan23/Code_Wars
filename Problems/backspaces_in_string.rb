def clean_string(dirty_string)
  clean_array = []

dirty_array = dirty_string.chars
  dirty_array.each do |character|
    if ('a'..'z').to_a.include?(character)
      clean_array << character
    else
      clean_array.pop
    end
  end

  p clean_array.join
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
