def plus(a,b)
  puts "A=%s,B=%s" %[a,b]
  a+b
end

alpha=14
beta=18
gama=27

delta=plus(alpha,beta)
gama+=plus(delta,beta)

print delta,gama
