def likes(array)
  size = array.size
  
  case size
  when 0 then "no one likes this"
  when 1 then "#{array[0]} likes this"
  when 2 then "#{array[0]} and #{array[1]} like this"
  when 3 then "#{array[0]}, #{array[1]} and #{array[2]} like this"
  else "#{array[0]}, #{array[1]} and #{array.size - 2} others like this"
  end
  end
  
  
  p likes([]) == "no one likes this"
  p likes(["Peter"]) == "Peter likes this"
  p likes(["Jacob", "Alex"]) == "Jacob and Alex like this"
  p likes(["Max", "John", "Mark"]) == "Max, John and Mark like this"
  p likes(["Alex", "Jacob", "Mark", "Max"]) == "Alex, Jacob and 2 others like this"
  