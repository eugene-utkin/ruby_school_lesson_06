a = 50
b = 20

puts a
puts b

a = a.to_s
b = b.to_s

b = b + a
a = (a + b)[a.length..-a.length-1]
b = b[-a.length..-1]


puts a
puts b 