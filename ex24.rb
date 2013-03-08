puts "Practice everything here."
puts "You\'d like to know \'bout escapse with \\ that do \n new lines and \t tabs"

poem=<<ML
What the fuck!
is it?
ML

puts "==="
puts poem
puts "==="

puts five=23-23+5-23-17+40
puts "This is five:%d" %five

def split(source)
  puts "Source is %d" %source
  return source/2
end

puts "Now input a number:"
num=STDIN.gets.chomp().to_i
puts "You split %s into 2 of each %d" %[num,split(num)]
