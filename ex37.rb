def force (name)
  puts name.to_s
end

def force_2 (name)
  puts name+' Holacrap!'
end

def caps(string)
  yield(string)
end

test_name="What the f**k?"
alias force force_2
force (test_name)
force_2 (test_name)
caps( "a lowercase string" ){ |x| x.capitalize! ; puts( x ) }
#caps(test_name){|x| x.capitalize!; puts(x)}

=begin
  def begin_test()
  begin
    File.open(ex19.txt)
  ensure
    File.close(ex19.txt)    
  end
end
=end
  