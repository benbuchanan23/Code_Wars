def count_prefixes(prefixes, string)
  string_array = string.chars
  sum = 0 

  prefixes.each do |substring|
    if substring == string_array[0..(substring.size - 1)].join
      sum += 1
    end
  end

  sum
end


p count_prefixes(["f", "fl", "flow", "f", "a"], "flower") == 4
p count_prefixes(["a","b","c","ab","bc","abc"], "abc") == 3
p count_prefixes(["a","a"], "aa") == 2
p count_prefixes(["a","b","ab","abs","abs"],"absolutely") == 4
p count_prefixes(["c","d","e"],"abc") == 0
