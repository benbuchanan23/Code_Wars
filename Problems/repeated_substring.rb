def f(string)
  results = []
  
  array = string.chars
  
  count = 1
    loop do 
    array.each_cons(count) do |substring|
      if substring.join * (array.size / count) == string
        results << substring.join << (array.size / count)
        break
      end
      end
      count += 1
      break if count > (array.size / 2)
    end
    
  if results.empty?
    return [string, 1]
  else
    return results
  end
  end

  # or 

  def repeated_substring(string)
    results = []
    substrings = []
  array = string.chars 
  1.upto(string.length / 2) do |n|
    array.each_cons(n) do |substring|
      if substring[0] == array[0]
        substrings << substring
      end
    end
  end
  
  substrings.uniq.each do |element|
    if element.join * (string.length / element.size) == string
      results << element.join << (string.length / element.size)
    end
  end
  
  if results.empty? 
    results << string << 1
  end
  
  p results
  end

  # or 

  def f(string) 
    results = []
    substrings = []
    
    0.upto(string.length / 2) do |n|
      substrings << string.chars[0..n]
    end
    
    substrings.each do |substring|
      if substring.join * (string.length / substring.size) == string && results.empty?
        results << substring.join << (string.length / substring.size)
      elsif substring.join * (string.length / substring.size) == string && (string.length / substring.size) > results.last
        results = [substring.join, (string.length / substring.size)]
      end
    end
    
    if results.empty?
      [string, 1]
    else
      results
    end
    end
  
  p f("ababab") == ["ab", 3]
  p f("abcde") == ["abcde", 1]
  