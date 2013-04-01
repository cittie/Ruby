while true
  puts "Enter a word you want to transfer to a score:"
  word=gets.chomp
  break if word.empty?
  
  score = 0  
  word.split(//).each do |x|
  score+=x.tr("a-z", "1-9a-q").to_i(27)    
  end
  
  puts score
end