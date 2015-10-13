class Robot
  attr_accesor :name

  def activate
    puts "#{name} is powering up"
  end

  def move(destination)
    puts "#{name} walks to #{destination}"
  end
end

class TankBot < Robot
  attr_accesor :weapon

  def attack
    puts "#{name} fires #{weapon}"
  end

  def move(destination)
    puts "#{name} rolls to #{destination}"
  end
end

class SolarBot < Robot
  def activate
    puts "#{name} deploys solar panel"
    super
  end
end

tank = Robot.new
tank.name = "Hugo"
tank.weapon = "laser"
tank.move "test dummy"
tank.attack

sunny = SolarBot.new
sunny.name = "Sunny"
sunny.activate
sunny.move "tanning bed"

