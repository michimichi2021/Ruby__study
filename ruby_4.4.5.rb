# ブロックを使う配列のメソッド
numbers = [1,2,3,4,5,6]
new_numbers = numbers.map{|n| n*10}
puts new_numbers

even_numbers = numbers.select{|n| n.even?}
puts even_numbers

odd_numbers = numbers.reject{|n| n.even?}
puts odd_numbers

even_number = numbers.find{|n| n.even?}
puts even_number

sum = numbers.inject(0) {|result,n| result + n}
puts sum

puts ['ruby','java','perl'].map(&:upcase)

puts (1..5).class