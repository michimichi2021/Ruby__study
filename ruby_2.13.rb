# 式?真だった場合の処理:偽だった場合の処理
n = 11
message = n > 10 ? '10より大きい':'10以下'
puts message

#引数にデフォルト値を設定しておけばエラーにならない
def greeting(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

puts greeting

# デフォルト値有無の混在も
def default_args(a,b,c=0,d=0)
  "a=#{a},b=#{b},c=#{c},d=#{d},"
end

puts default_args(1,2)

# デフォルト値は固定の値じゃなくてもいい
def foo(time=Time.now,message=bar)
  puts "time: #{time},message: #{message}"
end

def bar
  'BAR'
end

puts foo

# ?で終わるメソッドは真偽値を返す
puts 'watch'.include?('at')
puts 1.odd?

def multiple_of_three?(n)
  n%3==0
end
puts multiple_of_three?(5)

#!を使用する際は注意(破壊的メソッド)
a='ruby'
puts a.upcase
puts a

b ='rails'
puts b.upcase!
puts b

def reverse_upcase!(s)
  s.reverse!.upcase!
end
s='ruby'
puts reverse_upcase!(s)
puts s

# エイリアスメソッド
puts 'hello'.length
puts 'hello'.size

# 参照の概念
a='hello'
b='hello'
puts a.object_id
puts b.object_id

c=b
puts c.object_id

def m(d)
  d.object_id
end
puts m(c)

# equal?メソッドを使って同じオブジェクトかどうかを確認(trueなら同じオブジェクト)
puts b.equal?(c)

# オブジェクトの状態の変更は同じオブジェクト全てに影響
def m!(d)
  d.upcase!
end
puts m!(c)
puts c
puts b
puts a

# 組み込みライブラリでない場合、ライブラリを読み込む方法
require 'date'
puts Date.today