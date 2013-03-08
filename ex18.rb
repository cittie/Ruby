def puts_two(*args)
  arg1,arg2=args
  puts "arg1:%s arg2:%s" % [arg1,arg2]
end

def puts_two_again(arg1,arg2)
  puts "arg1:#{arg2} arg2:#{arg2}"
end

puts_two("1st","2nd")
puts_two_again("1st ag","2nd ag")
