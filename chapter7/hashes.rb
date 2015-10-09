my_hash = {"one" => "two", :three => "four",5 => "six"} 
puts my_hash[5]
puts my_hash["one"]
puts my_hash[:three ]
my_hash["seven" ] = 8
puts my_hash["seven"]

puts protons = {"He" => 2}
puts protons["He"]
puts protons["C"] = 6
puts protons["C"]
puts protons.has_key? "C"
puts protons.has_value? 119
puts protons.keys
puts protons.values
protons.merge { "C" => 0, "Uh" => 147.2 }
puts protons
