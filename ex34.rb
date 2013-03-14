second_array=['House M.D.','Grey\'s Anatony','Fringe','TBBT']
third_array=[7,14,29,221]
fourth_array=[4.33,2.781,15.234,77.208]
first_array=[second_array,third_array,fourth_array]

puts first_array.last
puts first_array.first
first_array.push(fourth_array)

puts first_array
