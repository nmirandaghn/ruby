def find_adjective(review)
  words = review.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

lines = []
File.open("reviews.txt") do |file|
  lines = file.readlines
end

#relevant_lines = []
#lines.each do |line|
#  if line.include?("Truncated")
#    relevant_lines << line
#  end
#end

relevant_lines = lines.find_all { |line| line.include? "Truncated"}
reviews = relevant_lines.reject { |line| line.include?("--")}

#adjectives = []
#reviews.each { |review| adjectives << find_adjective(review) }
adjectives = reviews.map { |review| find_adjective(review).capitalize }

puts reviews 
puts adjectives
