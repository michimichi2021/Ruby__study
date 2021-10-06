puts 1 + 2
a = 'Hello,world'
puts a
b = 'こんにちは'
puts b

c = 10.to_s(16)
puts c

puts nil.to_s

=begin
ここはコメントです
=end

def add(a,b)
  a + b
end
puts add(4,5)

# 空白の場合はnilを入れないとエラーになる
x = nil
puts x

special_price = 200

puts special_price

# ローカル変数は日本語でもオッケー
特別価格 = 300
puts 特別価格*2

# 右辺の大きい数は値に入らない
e,f = 100,200,300
puts e
puts f

# 右辺の数が少ない場合はnil
g,h = 10
puts g
puts h

# 二つの変数に同じ値を代入する
i = j = 100
puts i
puts j

# シングル×ダブルクオンテーションであれば改行可
puts "こんにちは\nさようなら"
puts 'こんにちは\nさようなら'

# シングル×ダブルクオンテーションであれば式展開
name = 'Alice'
puts "Hello,#{name}!"
k = 10
puts "#{k}は16進数にすると#{k.to_s(16)}です"

#ダブルクオンテーションであれば式展開や改行文字や式展開の機能を打ち消す場合は手前にバックスラッシュ
puts "こんにちは\\nさようなら"

# シングルクオート文字列の中にシングルクオートを含めたい場合も手前にバックスラッシュをつえる。ダブルクオートの場合も同様
puts 'He said,"Don\'t speak."'

# 文字列の比較
puts 'ruby' == 'ruby'
puts 'ruby' == 'Ruby'
puts 'a' < 'b'
puts 'a' < 'A'
puts 'abc' < 'def'

#区切り文字にできる。出力には関係なし。
puts 1_000
puts 12*5

# 変数の手前に-をつける
-l = 2
puts -l

# 小数点以下は切り捨てられる。.0をどこかに付けると小数点以下の値が出てくる。
m = 1/2
puts m

# 整数から小数に変更
n = 1
puts n.to_f


puts 8%3
puts 2**3
puts 1 != 2

o = 1
puts o *= 3