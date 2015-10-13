class Camera
  def load
 puts "Winding film"
  end

  def take_picture
    puts "Triggering shutter"
  end
end

class DigitalCamera
  def load
    puts "Inserting memory card"
  end
end

camera = Camera.new
camera.load
camera.take_picture

camera2 = DigitalCamera.new
camera.load
camera.take_picture
