class Robot
  def head
    @head
  end

  def arms=(value)
    @arms = value
  end

  attr_reader :legs, :body

  attr_writer :eyes
  
  attr_accessor :feet

  def assemble
    @legs = "RubyTek Walkers"
    @body = "Burlybot Frame"
    @head = "SuperAI 9000"
  end

  def diagnostic
    puts @arms
    puts @eyes
  end
end

robot = Robot.new
robot.assemble

robot.arms = "MayGrip Claws"
robot.eyes = "X-Ray Scopes"
robot.feet = "Magrip Boots"

puts robot.head
puts robot.legs
puts robot.body
puts robot.feet

robot.diagnostic
