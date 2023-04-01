def sort_even_odd(array)
  odds = []
  evens = []
  array.each_with_index do |element, index|
    if index == 0 || index.even?
      evens << element
    elsif index.odd?
      odds << element
    else 
      odds << element
    end
  end
  real_evens = evens.sort
  real_odds = odds.sort.reverse

  zipped = real_evens.zip(real_odds)
  zipped.flatten
end


p sort_even_odd([1,3,5,4]) == [1,4,5,3]
p sort_even_odd([4,1,2,3]) == [2,3,4,1]
p sort_even_odd([2,4,1,78]) == [1,78,2,4]
p sort_even_odd([2,1]) == [2,1]
