def digit_sum(string, integer)
  sums = []
  new_string = []

  loop do 
    string.chars.each_slice(integer) do |chunk|
      sums << chunk
    end
    sums.each do |substring|
      characters = substring.map do |character|
        character.to_i
      end
        new_string << characters.sum.to_s
    end
      newbie = new_string.join
      
    if newbie.length > integer 
      sums = []
      new_string = []
      string = newbie
    else
      return newbie
      break
    end
      
  end
end

p digit_sum("123456", 2) == "12"
p digit_sum("11111222223", 3) == "135"
p digit_sum("00000000", 3) == "000"
