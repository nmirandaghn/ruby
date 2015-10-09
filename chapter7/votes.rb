v = Hash.new(0)
lines = []
File.open("votes.txt") do |file|
  lines = file.readlines
end

lines.each do |line|
  v[line.upcase.chomp] += 1
end

v.each do |key, value|
  puts format("%20s - %8i", key, value)
end
