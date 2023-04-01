def song_decoder(string)
  array = string.gsub!("WUB", "").chars
  p array.join(' ')
  end
  
  
  p song_decoder("AWUBBWUBC") == "A B C"
  p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
  p song_decoder("WUBAWUBBWUBCWUB") == "A B C"
  