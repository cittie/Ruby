input_file="ex15.txt"

def print_all(f)
  puts f.read()
end

def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count,f)
  puts "#{line_count} #{f.readline()}"
end

current_file=File.open(input_file)

print_all(current_file)

rewind(current_file)

print_a_line(1,current_file)

current_file.close
