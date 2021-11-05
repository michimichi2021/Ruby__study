#4.9.3
a=[]
1.step(10,2){|n|a<<n}
puts a
b=[]
10.step(1,-2){|n|b<<n}
puts b

#4.9.4
c=[]
while c.size<5
  c<<1
end
puts c
d=[]
while d.size<5 do d<<2 end
puts d
e=[]
while false
  e<<1
end
puts e
f=[]
begin
  f<<3
end while false
puts f
g=[10,20,30,40,50]
until g.size<=3
  g.delete_at(-1)
end
puts g
#4.9.5
numbers=[1,2,3,4,5]
sum=0
for n in numbers
  sum+=n
end
puts sum
total=0
numbers.each do|o|
  total+=o
end
puts total
#4.9.6
loop do
  p=numbers.sample
  puts p
  break if p==5
end
while true
  q=numbers.sample
  puts q
  break if q==5
end