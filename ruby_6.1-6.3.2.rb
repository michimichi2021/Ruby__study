#6.1.2ハッシュ記法変換プログラムの実行例
old_syntax = <<TEXT
{
  :name => 'Alice',
  :age => 20,
  :gender => :female
}
TEXT
# convert_hash_syntax( old_syntax )

#6.2.2正規表現をゼロから学ぶ参考資料
#\d は「1個の半角数字（0123456789）」を意味するメタ文字
#Rubularでの操作方法
#Your regular expressionに正規表現を入力
#Your text string:に検索対象の文字列を入力
#Match result:に検索結果が出てくる
#\d{2,5}-\d{1,4}-\d{4}量指定子

#6.3
regex = /\d{3}-\d{4}/
puts regex.class

puts '123-4567' =~ /\d{3}-\d{4}/#真
puts 'hello' =~ /\d{3}-\d{4}/#偽

if '123-4567' =~ /\d{3}-\d{4}/
  puts 'マッチしました'
else
  puts 'マッチしませんでした'
end

puts 'hello' !~ /\d{3}-\d{4}/#真

# 1977年7月17日です
# \d+年\d+月\d+日だと1977年7月17日を大枠で捉えてしまう
# キャプチャーを使う(\d+)年(\d+)月(\d+)日と1977年7月17日を大枠で捉えてしまう

word = '私の誕生日は1977年7月17日です。'
m = /(\d+)年(\d+)月(\d+)日/.match(word)
puts m[1]
puts m[2]
puts m[3]
puts /(\d+)年(\d+)月(\d+)日/.match(word)