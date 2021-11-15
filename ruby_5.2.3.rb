currencies = {'japan'=>'yen','us'=>'dollar','india'=>'rupee'}
currencies.delete('japan')
puts currencies
puts currencies.delete('italy')
puts currencies.delete('italy'){|key| "Not found: #{key}"}
puts :apple.class
puts 'apple'.class

#同じシンボルであれば同じオブジェクト
puts :apple.object_id
puts :apple.object_id

puts 'apple'.object_id
puts 'apple'.object_id
puts 'apple'.object_id

#文字列は破壊的変更が可能。シンボルは不可。
string = 'apple'
string.upcase!
puts string

#シンボルをハッシュのキーにする
currencies2 = {:us=>'dollar',:india =>'rupee'}
puts currencies2[:us]

puts :apple.methods

#5.4.1
currencies3 = {japan:'yen',us:'dollar',india:'rupee'}
puts currencies3[:us]

currencies4 = {japan: :yen,us: :dollar,india: :rupee}
puts currencies4[:japan]