# &&は条件が全て真であれば真
t1 = true
t2 = true
f1 = false
f2 = false
puts t1 && t2
puts t1 && f1

#||はいずれかが真であれば真、両方偽であれば偽
puts t1 || t2
puts t1 || f1
puts f1 || f1
puts t1 && t2 || f1 && f2

#!反転
puts !t1
puts !f1
puts !(t1 && f1)

# if文
n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end

country = 'italy'

greeting =
if country == 'japan'
  'こんにちは'
elsif country == 'us'
  'Hello'
elsif country == 'italy'
  'ciao'
else
  '???'
end

puts greeting

point = 7
day = 1
if day == 1
  point *= 5
end
puts point


city = 'london'

word =
if city == 'kyoto' then
  'こんにちは'
elsif city == 'washinton' then
  'Hello'
elsif city == 'london' then
  'ciao'
else
  '???'
end

puts word

def hello_world
  'Hello,world!'
end

puts hello_world

def add(a,b)
  return a + b
end
puts add(1,2)

def aikotoba(country)
  return 'countryを入力してください' if country.nil?
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts aikotoba('japan')
puts aikotoba('us')
puts aikotoba(nil)