sentence="At a glance thounds of lives of people's spread into her views."
addings=%w(She\'s felling God of the world.)

words=sentence.split(' ')

next_one=addings.pop
while next_one!=nil
  words.push(next_one)
  next_one=addings.pop 
end

puts words.length
puts words[-1]
puts words[0]
puts words.pop
puts words.join(' ')
puts words.values_at(3,5).join('#')
