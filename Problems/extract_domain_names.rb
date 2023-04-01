def domain_name(website)
  website.gsub!("http://", '')
  website.gsub!("https://", '')
  website.gsub!("www.", '')
  website.split('.')[0]
  end
  
  
  p domain_name("http://google.com") == "google"
  p domain_name("http://google.co.jp") == "google"
  p domain_name("www.xakep.ru") == "xakep"
  p domain_name("https://youtube.com") == "youtube"
  