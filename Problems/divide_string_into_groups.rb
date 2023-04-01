
def divide_string(string, size, filler)
 
  array = string.chars
  results = []
    array.each_slice(size) do |element|
      results << element
    end

    final_results = results.map do |substring|
      if substring.size == size
        substring.join
      else
        substring = "#{substring.join}#{filler * (size-substring.size)}"
    end
  end

  if string.empty?
    final_results << "#{filler * size}"
  end

  final_results
end


p divide_string("aabbccd", 2, "x") == ["aa", "bb","cc","dx"]
p divide_string("abcdefghij", 3, "x") == ["abc","def","ghi","jxx"]
p divide_string("aa", 3, "x") == ["aax"]
p divide_string("abcdefghi", 3, "x") == ["abc","def","ghi"]
p divide_string("", 2, "x") == ["xx"]
p divide_string("aaa", 1, "x") == ["a","a","a"]
