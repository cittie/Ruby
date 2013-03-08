#Temperature F to C
puts "Please input a temperature of F."
STDOUT.flush
temp_f=gets.chomp.to_f
temp_c=format("%.2f",(temp_f-32)/1.8)
puts "The temperate of C is #{temp_c}."
