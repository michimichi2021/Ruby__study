# 異なるデータ型の格納

a = [1,
  2,
  3]
puts a

b = ['apple','orange','melon']
puts b

c = [1,'apple',2,'orange',3,'melon']
puts c

d = [[10,20,30],[40,50,60],[70,80,90]]
puts d

#添え字で要素を取得
puts a[0]
puts a[100]

# 配列の長さ
puts a.size

# 要素の変更、追加、削除
a[1] = 20
puts a

a[4] = 50
puts a

e = []
e<<1
e<<2
e<<3
puts e

e.delete_at(1)
puts e

# 多重代入
puts 14.divmod(3)

# 配列の繰り返し処理
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum

f = [1,2,3,1,2,3]
f.delete_if do |n|
  n.odd?
end
puts f

words = [1,2,3,4]
total = 0
words.each do |n|
  total_value = n.even?? n*10:n
  total += total_value
end
puts total


