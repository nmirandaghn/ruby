def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for the deer"
end

def mileage(miles_driven, gas_used)
  return 0 unless gas_used > 0 
  miles_driven / gas_used
end

accelerate
sound_horn
use_headlights
trip_mileage = mileage(400, 0)
puts "You got #{trip_mileage} MPG on this trip"

trip_mileage = mileage(400, 9)
puts "You got #{trip_mileage} MPG on this trip"
