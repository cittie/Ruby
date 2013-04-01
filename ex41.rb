def prompt
  puts ">"
end

def death
  quips=["You died!",
    "Hi deadman!",
    "Opps you died again!"]
    puts quips[rand(quips.length)]
    Process.exit(1)
end

def central_corridor
  prompt
  puts "shoot, dodge or tell a joke?"
  actions=gets.chomp()  
  
  if actions=="shoot"
    puts "You shooted, buuuum!"
    return :death
  elsif actions=="dodge"
    puts "Opps you dodged."
    return :death
  elsif actions=="tell a joke"
    puts "Hahaha"
    return :laser_weapon_armory    
  else
    puts "DOES NOT COMPUTE!"
    return :central_corridor
  end    
end

def laser_weapon_armory
  code="%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
  print code
  print ("Keypad>")
  guess=gets.chomp
  guesses=0
  
  while guess!=code and guesses<10
    puts "Buzzzed!"
    guesses+=1
    print ("Keypad>")
    guess=gets.chomp
  end
    
  if guess==code
    puts "Fuck, how can you get it?"
    return :the_bridge
  else
    puts "Hahaha, wrong number"
    return :death
  end    
end

def the_bridge
  puts "Throw the bomb,or slowly place the bomb?"
  prompt
  action=gets.chomp
  
  if action=="throw the bomb"
    puts "Throw out, booomb!"
    return :death
  elsif action=="slowly place the bomb"
    puts "Woops!"
    return :escape_pod
  else
    puts "DOES NOT COMPUTE!"
    return :the_bridge
  end
end

def escape_pod
  puts "which one will you take?"
  
  good_pod=rand(5)+1
  print good_pod
  print "Pod#>"
  guess=gets.chomp
  
  if guess.to_i!=good_pod
    puts "Ohhh no!"
    return :death
  else 
    puts "Damn good luck!"
    puts "Won!"
    Process.exit(1)
  end
end

ROOMS={
  :death => method(:death),
  :central_corridor => method(:central_corridor),
  :laser_weapon_armory => method(:laser_weapon_armory),
  :the_bridge => method(:the_bridge),
  :escape_pod => method(:escape_pod)}
  
def runner(map,start)
  next_one=start
  
  while true
    room=map[next_one]
    puts "\n-------"
    next_one=room.call()
    end
end 

runner(ROOMS,:central_corridor)