class TheThing
  attr_reader :number
  
  def initialize()
    @number=0
  end
  
  def some_function()
    puts "You called me!"
  end
  
  def add_me_up(more)
    @number+=more
    return @number
  end
end

a=TheThing.new
b=TheThing.new

a.some_function()
b.some_function()

puts a.add_me_up(20)
puts b.add_me_up(20)
puts a.add_me_up(40)
puts b.add_me_up(40)

puts a.number()
puts b.number()
