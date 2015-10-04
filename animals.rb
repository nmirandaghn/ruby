class Animal
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
    puts "#{@name} Barks!"
  end

  def report_age
    puts "#{@name} is #{age} years old."
  end

  def to_s
    "#{name} is #{age} " 
  end
end

class Dog < Animal
end

class Bird < Animal
  def talk
    puts "#{name} Chirp, chirp"
  end

  def move(destination)
    puts "#{name} flies to the #{destination}"
  end
end

class Cat < Animal
  def talk
    puts "#{name} Meow!"
  end

  def move(destination)
    puts "#{name} runs to the #{destination}"
  end
end

class Armadillo < Animal
  def talk
    puts "#{name} Light Chirp"
  end

  def move(destination)
    puts "#{name} unrolls"
    super
  end
end

b = Bird.new
d = Dog.new
c = Cat.new
a = Armadillo.new

b.name = "Tweety"
b.talk
b.move("tree")
puts ""
d.name = "Sparky"
d.talk
d.move("tree")
puts ""
c.name = "Bobby"
c.talk
c.move("tree")
puts ""
a.name = "Dillon"
a.talk 
a.move "under the ground"
