# with_indexメソッドのいろいろ
fruits=['apple','orange','melon']
fruits.each_with_index{|fruit,i| 
puts "#{i+1}:#{fruit}"}
fruits.map.with_index{|fruit2,j|
puts "#{j}:#{fruit2}" }
delete_fruits=['apple','orange','melon']
delete_fruits.delete_if.with_index{
|fruit3,k| fruit3.include?('a')&& k.odd? }
puts delete_fruits
index_fruits=['apple','orange','melon']
index_fruits.each.with_index(2){|fruit4,l| 
  puts "#{l}:#{fruit4}"}
index_fruits.map.with_index(5){|fruit5,m|
"#{m}:#{fruit5}"}
puts index_fruits
# 配列がブロック引数に渡される場合
dimensions=[
  [10,20],
  [30,40],
  [50,60],
]
areas=[]
dimensions.each do |dimension|
  length=dimension[0]
  width=dimension[1]
  areas<<length*width
end
puts areas
dimentions=[
  [10,20],
  [30,40],
  [50,60],
]
dimentions.each_with_index do |
  (length,width),i|
  puts "length:#{length},width:#{width},i:#{i}"
end