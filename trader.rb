def day_trader(prices)
    return [0, 0] if prices.empty? || prices.size == 1
    
    min_price_index = 0
    max_profit = 0
    buy_sell_days = [0, 0]
  
    prices.each_with_index do |price, sell_day|
      if price < prices[min_price_index]
        min_price_index = sell_day
      end
  
      profit = price - prices[min_price_index]
      if profit > max_profit && sell_day > min_price_index
        max_profit = profit
        buy_sell_days = [min_price_index, sell_day]
      end
    end
  
    buy_sell_days
  end
  