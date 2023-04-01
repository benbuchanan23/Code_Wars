def transformer(string)
  results = []
reversed_string = string.split(' ').reverse.join(' ')
reversed_array = reversed_string.chars
  reversed_array.each do |character|
    if character == character.upcase
      results << character.downcase
    else
      results << character.upcase
    end
  end

  p results.join
end


p transformer("Example Input") == "iNPUT eXAMPLE"