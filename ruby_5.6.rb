currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
p currencies.keys
p currencies.values
p currencies.has_key?(:japan)
h = { us:'dollar',india: 'rupee'}
p currencies.to_a
array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
p array.to_h