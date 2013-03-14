hair=['gold','brown','grey','black','red']
fruit=['apple','pears','oringe','grape']
change=[1,'pennies',2,'dimes',3,'quarters']

hair.each do |hairs|
  puts "Hair type:%s" % hairs
end

for names in fruit
  puts "It contains %s" % fruit
end

for i in change
  puts "I got #{i}"
end

elements=[]

=begin
for i in (0..5)
  puts "adding #{i} to elements"
  elements.push(i)
end
=end
elements=(0..5) 

for i in elements
  puts "Elements was: #{i}"
end