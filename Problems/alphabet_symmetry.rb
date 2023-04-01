
def solve(array)
  alphabet = ('a'..'z').to_a
  results = []
little_array = array.map do |word|
  word.downcase
end

count = 0 
little_array.each do |word|
  word.chars.each_with_index do |letter, index|
    if index == alphabet.index(letter)
      count += 1
    end
  end
  results << count
  count = 0 
end

p results
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
