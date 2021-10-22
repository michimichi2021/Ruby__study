a=[1]
b=[2,3]
puts a+b
a.concat(b)
puts a
puts b

c=[4]
d=[5,6]
puts c+d
puts c
puts d

e=[7,8,9]
f=[9,11,12]
puts e|f
puts e-f
puts e&f

require 'set'
g = Set.new([1,2,3])
h = Set.new([3,4,5])
puts g|h
puts g-h
puts g&h

i,*j = 100,200,300
puts i
puts j

k=[]
k.push(1)
k.push(2,3)
puts k


