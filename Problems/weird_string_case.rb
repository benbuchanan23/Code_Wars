def weirdcase(string)
  weird_array = []
  array = string.split(' ')
    array.each do |word|
      weird_word = word.chars.map.with_index do |letter, index|
        if index == 0 
          letter.upcase
        elsif index.odd?
          letter.downcase
        else
          letter.upcase
        end
      end
      weird_array << weird_word.join
    end
  
    weird_array.join(' ')
  end
  
  
  
  p weirdcase( "String" ) == "StRiNg"
  p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
  