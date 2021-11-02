# メソッドの可変長引数
def greeting(*names)
  "#{names.join("と")}、こんにちは!"
end

puts greeting('田中さん')
puts greeting('田中さん','鈴木さん')
puts greeting('田中さん','鈴木さん','佐藤さん')

#splat展開
a=[1,2,3]
puts [a]
puts [*a]

# ==等しいか判断
puts [1,2,3]==[1,2,3]
puts [1,2,3]==[1,2,4]