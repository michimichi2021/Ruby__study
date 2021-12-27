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
puts m[2,2]
puts m[3]
puts m[-1]
puts m[1..3]
puts /(\d+)年(\d+)月(\d+)日/.match(word)

n = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(word)
puts n[:year]
puts n[:month]
puts n[:day]
puts n['year']
puts n[2]

#正規表現は左辺に来なければいけない、正規オブジェクトを変数に入れない
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ word
  puts "#{year}/#{month}/#{day}"
end

#正規表現と組み合わせると便利なStringクラスのメソッド
p '123 456 789'.scan(/\d+/)
p '1977年7月17日2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)
#キャプチャはしないが、グループ化はする
p '1977年7月17日2016年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
post = '郵便番号は123-4567です'
puts post[/\d{3}-\d{4}/]
puts word[/(\d+)年(\d+)月(\d+)日/,3]
puts post.slice(/\d{3}-\d{4}/)
puts word.slice(/(\d+)年(\d+)月(\d+)日/,3)
puts post.slice!(/\d{3}-\d{4}/)
p post
number = '123,456-789'
p number.split(',')
number2 = '123,456-789'
puts number2.gsub(',',':')
puts word.gsub(/(\d+)年(\d+)月(\d+)日/,'\1-\2-\3')