#4.10
numbers=[1,2,3,4,5].shuffle
numbers.each do |n|
  puts n
  break if n == 5
end

i=0
while i < numbers.size
  o = numbers[i]
  puts o
  break if o == 5
  i += 1
end

#breakに引数を渡さないとnil,渡すと値が返ってくる
ret =
while true
  break
end
puts ret

test =
while true
  break 123
end
puts test

#繰り返し処理が入れ子の場合、一番内側の繰り返し処理を脱出
fruits=['apple','melon','orange']
fruit_numbers=[1,2,3]
fruits.each do |fruit|
  fruit_numbers.shuffle.each do |p|
    puts "#{fruit},#{p}"
    break if p == 3
  end
end

#catchメソッドとthrowメソッドで繰り返し処理を脱出(タグが違うとエラー)
catch :done do
  fruits.each do |r|
    fruit_numbers.shuffle.each do |s|
      puts "#{r},#{s}"
      if r == 'orange' && s == 3
      throw :done  
      end
    end
  end
end

#throwメソッドに第2引数を渡すとcatchメソッドの戻り値になる
t =
catch :did do
  throw :did
end
puts t

u =
catch :does do
  throw :does, 123
end
puts u

#4.10.4
#nextは繰り返し処理を途中で中断し、次の繰り返し処理に進める
words = [1,2,3,4,5]
words.each do |w|
  next if w.even?
  puts w
end

#4.10.5 redo
foods =['ピーマン','トマト','セロリ']
foods.each do |food|
  print "#{food}は好きですか?→"
  answer = ['はい','いいえ'].sample
  puts answer
  redo unless answer == 'はい'
end

#無限ループを防ぐ
count = 0
foods.each do |veg|
  print "#{veg}は好きですか?→"
  answer = 'いいえ'
  puts answer
  count += 1
  redo if answer != 'はい' && count < 2
  count = 0
end

