class Dog
  attr_reader :name, :age

  def name=(value)
    if value.empty?
      raise "Name can't be blank"
    else
      @name = value
    end
  end

  def age=(value)
    if value < 0
      raise "Age #{value} is invalid"
    else
      @age = value
    end
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def report_age
    puts "#{@name} is #{age} years old."
  end
end

d = Dog.new
d.name = "Fido"
d.age = 2
puts d.report_age
