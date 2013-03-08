#leep year
puts "Please input a year"
STDOUT.flush
year=gets.chomp.to_i
if 
  (year % 400 == 0) or ( (year % 4 == 0) and (year % 100 != 0)) 
  puts "#{year} is a leap year!"
else puts "#{year} is not a leap year!"
end

