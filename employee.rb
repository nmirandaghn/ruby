class Employee
  attr_reader :name, :salary

  def name=(name)
    if name.empty?
      raise "Name can't be blank"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} is not valid!"
    end
    @salary = salary
  end

  def initialize(name = "Anonymous", salary = 0.00)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "Name: #{self.name}"
    pay_for_period = (self.salary / 365.0) * 14
    formatted_pay = format("%0.2f", pay_for_period)
    puts "Pay this period: $#{formatted_pay}"
  end
end

amy = Employee.new("Amy Blake", 50000)
amy.print_pay_stub

amy = Employee.new
amy.print_pay_stub
