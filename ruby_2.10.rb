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