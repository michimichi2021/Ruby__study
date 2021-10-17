a = [1,2,3,4,5]
puts a[1..3];

b = 'cdefg'
puts b[1..3];

def liquid?(temperature)
  (0...100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

def charge(age)
  case age
  when 0..5
    0

  when 6..12
    300

  when 13..18
    600

  else
    1000
  end
end

puts charge(3);
puts charge(12);
puts charge(16);
puts charge(25);

puts (1..5).to_a
puts ('a'..'e').to_a

numbers = (1..4).to_a
sum = 0
numbers.each{|n| sum += n}
puts sum

total = 0
(1..4).each{|n| total += n}
puts total

skips = []
(1..10).step(2){|n| skips<<n}
puts skips