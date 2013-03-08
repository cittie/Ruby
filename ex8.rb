formatter="%s %s %s %s"

puts formatter %["one","two","three","four"]
puts formatter %[4,3,2,1]
puts formatter %[true,false,false,true]
puts formatter %[formatter,formatter,formatter,formatter]
puts formatter %[
  "Morning",
  "every one, it is a ",
  "very good day to sleep",
  "enjoy it!"
]
