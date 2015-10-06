class Employee
  attr_reader :name, :salary

  def name=(name)
    if name.empty?
      raise "Name can't be blank"
    end
    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} is not valid!"
    end
    @salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (self.salary / 365.0) * 14
    formatted_pay = format("%0.2f", pay_for_period)
    puts "Pay this period: $#{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(value)
    if value < 0
      raise "Hourly wage can't be negative"
    end
    @hourly_wage = value
  end

  def hours_per_week=(value)
    if value < 0
      raise "Hours per week can't be negative"
    end
    @hours_per_week = value
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%0.2f", pay_for_period)
    puts "Pay this period #{formatted_pay}"
  end
end

s = SalariedEmployee.new
s.name = "Jane Doe"
s.salary = 50000
s.print_pay_stub

puts ""

h = HourlyEmployee.new
h.name = "John Smith"
h.hourly_wage = 14.97
h.hours_per_week = 30
h.print_pay_stub
