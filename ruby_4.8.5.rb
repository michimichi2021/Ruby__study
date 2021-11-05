numbers = [1,2,3,4]
sum=0
numbers.each do |n; sum|
  sum=10
  sum+=n
  p sum
end
a=[1,2,3]
a.delete 100 do
puts 'NG'
end
total=0
5.times{|n| total+=n}
puts total
sum2=0
5.times{sum2+=1}
puts sum2
b=[]
10.upto(14){|o|b<<o}
puts b
c=[]
14.downto(10){|p|c<<p}
puts c
