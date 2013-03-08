def file_details(filename)
  target=File.open(filename)
  puts target.size
  puts target.read
  puts tar
  target.close
end

puts "Input filename please:"
filename=STDIN.gets.chomp()
file_details(filename)

