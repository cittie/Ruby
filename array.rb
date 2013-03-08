a5=[1,2,3,4,5]
total=0

a5.each do |plus|
total=total+plus
end

puts "total of a5 is #{total}"

b5=[12, 23, 456, 123, 4579]

b5.each do |oe|
  if oe % 2 == 0 
    puts "#{oe} is a odd!"
  else 
    puts "#{oe} is a even"
  end
end

