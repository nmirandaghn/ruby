def tosnakecase(word)
  new_string = ""
  chars = word.chars
  new_string = chars.shift

  chars.each do |letter|
    if letter == letter.upcase
      new_string += "_#{letter.downcase}"
    else
      new_string += letter
    end
  end

  new_string.downcase
end

puts tosnakecase("camelCase")
puts tosnakecase("helloMrRobinson")
