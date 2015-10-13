def tosnakecase(string)
  new_string = ""
  chars = string.chars
  new_string = chars.shift

  chars.each do |letter|
    if letter == letter.upcase && !['0','1','2','3','4','5','6','7','8','9'].include?(letter)
      puts letter
      new_string += "_#{letter.downcase}"
    else
      new_string += letter
    end
  end

  new_string.downcase
end

def to_underscore(string)
  string.to_s.split('/?=[A-Z]/').join('_').downcase
end

puts tosnakecase("TestController")
puts tosnakecase("MoviesAndBooks")
puts tosnakecase("App7Test")
puts tosnakecase("1")

puts to_underscore("TestController")
puts to_underscore("MoviesAndBooks")
puts to_underscore("App7Test")
puts to_underscore("1")

