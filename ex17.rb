puts "Please enter input filename:"
input_file=gets.chomp()
puts "Please enter output filename:"
output_file=gets.chomp()

input=File.open(input_file)
indata=input.read()

puts "The input file is #{indata.length} bytes long"
puts "Output file exists? #{File.exists? output_file}"
puts "RETURN to continue, CTRL+C to abort."
STDIN.gets

output=File.open(output_file,'w')
output.write(indata)

puts "All done!"

input.close
output.close
