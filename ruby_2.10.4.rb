# &&や||の戻り値と評価を終了するタイミング。式全体が真また偽であることが決定するまで左辺から順に式を評価する。
puts 1&&2&&3

# 二つ目のnilを評価した時点で式全体が偽であるため評価終了
puts 1&&nil&&3

puts 1&&false&&3

# 2を評価した時点で式全体が真であるため評価終了
puts nil||false||2||3

# and,or,not
t1 = true
f1 = false

puts !f1||t1
puts not(f1||t1)
puts t1||(t2&&f1)

def greeting(country)
  country or return 'countryを入力してください'

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

puts greeting(nil)
puts greeting('japan')

status = 'error'
if status != 'ok'
  puts '何か異常があります'
end

# unless文

puts 'エラーがあります' unless status == 'ok'

answer = 'error'

message =
unless answer == 'ok'
  '何か異常があります'
else
  '正常です'
end

puts message

country = 'Italy'
trip =
if country == 'japan'
  'こんにちは'
elsif country == 'us'
  'Hello'
elsif country == 'Italy'
  'ciao'
else
  '???'
end

puts trip

traveler = 'アメリカ'
travel =
case traveler
when 'japan','日本'
  'こんにちは'
when 'us','アメリカ'
  'Hello'
when 'Italy','イタリア'
  'ciao'
else
  '???'
end

puts travel
