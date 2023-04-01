def format_duration(integer)
  # YEAR = 31536000
  # DAY = 86400
  # HOUR = 3600
  # MIN = 60
  # SEC = 1
  
  if integer == 0
    "now"
  elsif integer == 1 
    "1 second"
  elsif integer >= 2 && integer < 60
    "#{integer} seconds"
  elsif integer % 60 == 0 && integer < 3600
    "#{integer / 60} minutes"
  elsif integer % 60 != 0 && integer < 3600 
    seconds = (integer % 60) 
    "#{(integer / 60).floor} minute and #{seconds} seconds"
  elsif integer == 3600 
    "1 hour"
  elsif integer % 3600 == 0 
    "#{integer / 3600} hours"
  elsif integer >= 3600 && integer < 7200
    "#{(integer / 3600).floor} hour, #{((integer % 3600) / 60).floor} minute and #{((integer % 3600) % 60)} seconds"
  end
  
  end
  
  
  p format_duration(1) == "1 second"
  p format_duration(62) == "1 minute and 2 seconds"
  p format_duration(120) == "2 minutes"
  p format_duration(3600) == "1 hour"
  p format_duration(3662) == "1 hour, 1 minute and 2 seconds"