#leap_year method
def leap_year(year)
  if (year % 400 == 0) or ((year % 4 == 0) and (year % 100 != 0))
    puts "It is a leap year."
    puts "It has totally #{366*24*60} minutes."
  else 
    puts "It is not a leap year."
    puts "It has totally #{365*24*60} minutes."
  end
end

var=1
while var<8
  
puts "Please input a year:"
STDOUT.flush
years=gets.chomp.to_i 
  leap_year(years)
  var += 1
end

