def total(prices)
  amount = 0.0
  index = 0

  while index < prices.length
    amount += prices[index]
    index += 1
  end

  amount
end

def refund(prices)
  amount = 0.0
  index = 0

  while index < prices.length
    amount -= prices[index]
    index += 1
  end

  amount
end

def show_discounts(prices)
  index = 0

  while index < prices.length
    amount = prices[index] / 3.0
    puts format("Your discount: $%0.f", amount)
    index += 1
  end
end
