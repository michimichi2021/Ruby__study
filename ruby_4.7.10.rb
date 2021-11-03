# %記法で文字列をつくる
puts %w!apple melon orange!
puts %w(apple melon orange)
puts %w(big\apple small\melon orange)

# 4.7.11配列に変換する
puts 'Ruby'.chars
puts 'Ruby,Java,Perl,PHP'.split(',')

#4.7.12配列に初期値を設定する
a=Array.new(5)
puts a
b=Array.new(5,0)
puts b
c=Array.new(10){|n|n%3+1}
puts c

# 4.7.13
d=Array.new(5,'default')
str=d[0]
puts str
str.upcase!
puts str
puts d

e=Array.new(5){'default'}
uvx=e[0]
uvx.upcase!
puts uvx
puts e

# 4.7.14ミュータブル?イミュータブル?
f=Array.new(5,0)
puts f
# freezeメソッド使うと変更不可
