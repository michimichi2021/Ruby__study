hash={'abc'=>123,def:456}
puts hash['abc']
puts hash[:def]
person={
  name:'Alice',
  age:20,
  friends:['Bob','Carol'],
  phones:{
    home:'1234-0000',mobile:'5678-0000'
  }
}

puts person[:age]
puts person[:friends]
puts person[:phones][:mobile]
puts convert_length(1,'m','in')