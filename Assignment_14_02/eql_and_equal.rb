a = "ruby"
b = "ruby"

obj1 = a.object_id
obj2 = b.object_id

puts "Object Id Of a- #{a}: #{obj1}"
puts "Object Id Of b- #{b}: #{obj2}"

eql_method = a.eql?(b)
puts "eql: #{eql_method}"

equal_method = a.equal?(b)
puts "equal: #{equal_method}"
