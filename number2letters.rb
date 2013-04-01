while true
  puts "Enter a number you want to transfer to a letter:"
  input=gets.chomp
  break if input.empty?

  number=input.to_i  
  if number<1 or number>26
    puts "Fuck, do you learn how to count?"
  else
    puts number.to_s(27).tr("1-9a-q", "a-z")
  end
    
end