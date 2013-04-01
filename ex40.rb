stuff={
  :name=>'Kitty',
  :age=>30,
  :hair_color=>'Brown',
  :gender=>'female',
  :certificated=>false}

province={
  'gui'=>'guangxi',
  'yue'=>'guangdong',
  'jing'=>'beijing',
  'lu'=>'shandong'}

province['chuan']='sichuan'
province['min']='fujian'

def find_province(place,hash)
  if place.include? hash
    return place[hash]
  else
    return "Not found!"
  end
end

province[:find]=method(:find_province)

puts stuff
puts province
  
while true
  print "hash? (ENTER to quit)"
  hash=gets.chomp
  
  break if hash.empty?
  puts province[:find].call(province,hash)
end
