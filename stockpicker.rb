def stock_picker(stock_prices)

  # initiating variables to first value which will be compared later on
  max_difference = stock_prices[1] - stock_prices[0]
  min_element = stock_prices[0]
  index_max_difference = 0

  stock_prices.each.with_index do |price, day|
    # set max diff if the difference is higher than the current max_diff
    if(price - min_element > max_difference)
      max_difference = price - min_element
      index_max_difference = [stock_prices.index(min_element), day,].to_s
    end
    # set new minimum if the value is less than the
    if(price < min_element)
      min_element = price
    end
  end
  return index_max_difference
end

stock_prices = [17,3,6,9,15,8,6,1,10]
puts stock_picker(stock_prices)