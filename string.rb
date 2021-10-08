# シングルクオートで囲んだのと同じ
puts %q!He said,"Don't speak."!
puts %q?He said,"Don't speak."?
puts %q{He said,"Don't speak."}

# タブルクオートで囲んだのと同じ
something = "Hello."
puts %Q!He said,"#{something}"!

# 改行もできる
puts "Line 1,
Line 2"

#ヒアドキュメント
def some_method
  <<-TEXT
  これはヒアドキュメントです。
  TEXT
end

puts some_method

# ヒアドキュメント内の式展開。識別子をシングルクオートで囲むと式展開が無効。
name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん!
以下のメッセージをご覧ください。
TEXT
puts a

# prependは渡された文字列を先頭に追加するメソッド
b = 'Ruby'
b.prepend(<<TEXT)
Java
PHP
TEXT
puts a

# 文字列作成のいろいろ
puts sprintf('%0.3f',1.2)
puts [10,20,30].join
puts 'Hi!'*10
puts String.new('hello')
puts 0b11111111
puts 2e-3
puts 10.class

r = 2/3r
puts r.class
