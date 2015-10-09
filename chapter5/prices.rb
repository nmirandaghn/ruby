def total(prices)
  amount = 0.0

  prices.each do |price|
    amount += price
  end
  amount
end

def refund(prices)
  amount = 0.0

#  prices.each do |price|
#    amount -= price
#  end
  
  prices.each { |price| amount -= price }
  amount
end

def show_discounts(prices)
  prices.each do |price|
    amount = price / 3.0
    puts format("Your discount: $%0.f", amount)
  end
end

prices = [3.99, 25.0, 8.99]
t = total(prices)
puts format("Total: $%0.2f", t)

r = refund(prices)
puts format("Refund: $%0.2f", r)

show_discounts(prices)
