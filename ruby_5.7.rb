#シングルクオートで囲むとシンボルとして有効
p :'12345'
p :'ruby-is-fun'
p :'ruby is fun'
p :'()'
name = 'Alice'
p :"#{name.upcase}"
p hash = {'abc': 123}

#%記法を使ってシンボルの作成
p %s!ruby is fun!
p %s(ruby is fun)
p %i(apple orange melon)
p %i(hello\ngood-bye #{name.upcase})
p %I(hello\ngood-bye #{name.upcase})

#シンボルと文字列の関係
string = 'apple'
symbol = :apple
p string == symbol
p string.to_sym
p string.to_sym == symbol
p symbol.to_s
p string + symbol.to_s
p 'apple'.respond_to?('foo_bar')
p 'apple'.include?('pp')
