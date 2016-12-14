a = [1,2,3] 
p a.shift

p a
a = %w(b c d)
p a
 #=> ["b", "c", "d"] 
p a.unshift("a")
 #=> ["a", "b", "c", "d"] 
