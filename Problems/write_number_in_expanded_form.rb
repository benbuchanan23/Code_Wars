def expanded_form(integer)
  results = ''
  array = integer.digits
  array.map.with_index do |element, index|
    if ("#{element.to_s}#{'0' * index}").start_with?("0")
      next
    elsif results.empty?
      results.prepend("#{element.to_s}#{'0' * index}")
    else
      results.prepend("#{element.to_s}#{'0' * index} + ")
    end
  end

  p results
end


p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
