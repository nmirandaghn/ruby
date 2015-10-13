class Dog
  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def age=(age)
    @age = age
  end

  def age
    @age
  end

  def report
    puts "My name is #{@name} and I am #{age} years old."
  end
end

d = Dog.new
d.name = "Fido"
d.age = 2
puts d.report
