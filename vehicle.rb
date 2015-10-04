class Vehicle
  attr_accessor :odometer, :gas_used

  def accelerate
    puts "Floor it"
  end

  def sound_horn
    puts "Beep, beep"
  end

  def steer
    puts "Turn fron 2 wheels"
  end

  def mileage
    return @odometer / @gas_used
  end
end

class Car < Vehicle

end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed"
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel"
  end
end

truck = Truck.new
truck.load_bed "cars"
puts truck.cargo

m = Motorcycle.new
m.steer
