#/\d[3]-\d[4]/と書いた場合と同じ
Regexp.new('\d{3}-\d{4}')

#スラッシュで囲むと、スラッシュをエスケープする必要がある
p /http:\/\/example\.com/

#%rを使うとスラッシュをエスケープする必要がある
p %r!http://example\.com!
p %r[http://example\.com]

pattern = '\d{3}-\d{4}'
p '123-4567' =~ /#{pattern}/

#6.5.2,case文で正規表現を使う
text = '03-1234-5678'
case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end

#6.5.3
p 'HELLO' =~ /hello/i
p 'HELLO' =~ %r{hello}i
regexp = Regexp.new('hello',Regexp::IGNORECASE)
p 'HELLO' =~ regexp
#mオプションをつけると.任意文字にマッチする
p "Hello\nBye" =~ /Hello.Bye/
p "Hello\nBye" =~ /Hello.Bye/m
#iオプションとmオプションを同時に使う
p "HELLO\nBYE" =~ /Hello.Bye/im
