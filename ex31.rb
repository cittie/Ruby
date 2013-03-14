def prompt
  print ">"
end

puts 'Dark door upon, 1# or 2#?'

prompt; door=gets.chomp

if door=="1"
  puts "A bear is eating a cake, what do you do"
  puts "1. Take the cake"
  puts "2. Scream at bear"
  
  prompt; bear=gets.chomp
  
  if bear=="1"
    puts "You die!"
  elsif bear=="2"
    puts "You die too!"
  else
    puts "Well, doing %d maybe better, bear runs away" % bear
  end
  
elsif door=="2"
  puts "You stare into the endless abyss at Cthuhlu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."
  
  prompt; insanity=gets.chomp
  
  if insanity=="1" or insanity=="2"
    puts "Your body survives powered by a mind of jello.  Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck.  Good job!"
  end
  
else
  puts "You stumble around and fall on a knife and die.  Good job!"
end