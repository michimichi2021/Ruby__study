# 様々な要素の取得
a=[1,2,3,4,5]
puts a[1,3]
puts a.values_at(0,2,4)
puts a[a.size-1]
puts a[-1]
puts a[-2]
puts a[-2,2]
puts a.last
puts a.last(2)
puts a.first
puts a.first(2)

b=[]
b.push(1)
b.push(2,3)
b.delete(2)
puts b