i=0
numbers=[]

while i<6
  puts "At the top i is:%d" % i
  numbers.push(i)
  
  i+=1
  puts "Numbers now:#{numbers}"
  puts "At the bottom i is:%d" % i
end

puts "The numbers: "

numbers.each do |num|
  puts num
end
