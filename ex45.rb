class Animal
  attr_reader :name
end

class Dog < Animal
  
  def initialize(name)
    @name = name
  end
  
end

class Cat < Animal
  
  def initialize(name)
    @name = name
  end
  
end

class Person
  
  attr_accessor :pet
  attr_reader :name
  
  def initialize(name)
    @name = name
    @pet = nil
  end

end

class Employee < Person
  
  def initialize(name,salary)
    super(name)
    @salary = salary
  end
  
end

class Fish
  
end

class Salmon < Fish
  
end

class Halibut < Fish
  
end

rover = Dog.new("Rover")
satan = Cat.new("Satan")
mary = Person.new("Mary")
mary.pet = satan
frank = Employee.new("Frank",1500)
frank.pet = rover
flipper = Fish.new
crouse = Salmon.new
harry = Halibut.new

age={
  rover => 4,
  satan => 3,
  mary => 25,
  frank => 37,
  flipper => 1}

puts age[mary]
puts mary.name

