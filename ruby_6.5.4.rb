#組み込み変数でマッチの結果を取得する
text = '私の誕生日は1977年7月17日です。'
text =~ /(\d+)年(\d+)月(\d+)日/
puts $~
puts $&
puts $1
puts $2
puts $3
puts $+
puts Regexp.last_match
puts Regexp.last_match(0)
puts Regexp.last_match(1)
puts Regexp.last_match(2)
puts Regexp.last_match(3)
puts Regexp.last_match(-1)

#6.5.6
puts /\d{3}-\d{4}/.match?('123-4567')
puts $~
puts '123-4567'.match?(/\d{3}-\d{4}/)