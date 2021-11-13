puts {}.class
currencies={'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
currencies['Italy']='euro'
puts currencies
currencies['japan']='円'
puts currencies
puts currencies['brazil']

#5.2.2.rb
currencies.each do |key,value|
  puts "#{key}:#{value}"
end

currencies.each do |key_value|
  key2 = key_value[0]
  value2 = key_value[1]
  puts "#{key2}:#{value2}"
end


a={'x'=>1,'y'=>2,'z'=>3}
b={'x'=>1,'y'=>2,'z'=>3}
c={'x'=>10,'y'=>2,'z'=>3}
puts a==b
puts a==c
puts a.size