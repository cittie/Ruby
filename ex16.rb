filename=ARGV.first
#script=$0

puts "Do you want to erase #{filename}?"
puts "If you don't, hit CTRL+C."
puts "If you do, hit ENTER."

print "?"
STDIN.gets

puts "Opening the file..."
target=File.open(filename,'w')

#puts "truncating the file. Farewell!"
#target.truncate(target.size)

puts "Now to input 3 lines"
print "line1:"; line1=STDIN.gets.chomp()
print "line2:"; line2=STDIN.gets.chomp()
print "line3:"; line3=STDIN.gets.chomp()

puts "Above will be written to a file."

target.write(line1+"\n"+line2+"\n"+line3+"\n")

puts "File will be closed"
target.close()
