def stock_picker(price_array)
    best_buy = 0
    best_sell = 0
    max_profit = 0
    day_profit = 0

    price_array.each_with_index do |buy_value, buy_date|
        price_array.each_with_index do |sell_value, sell_date|
            day_profit = sell_value - buy_value
            if day_profit > max_profit && buy_date < sell_date
                max_profit = day_profit
                best_buy = buy_date
                best_sell = sell_date
            end
        end
    end
    puts "The best day to buy is on day " + best_buy.to_s.next + 
    ", while the best day to sell is on day " + best_sell.to_s.next + "."
    puts "The maximum profit is $" + max_profit.to_s + "."
    return [best_buy, best_sell]
end

puts stock_picker([10,3,6,9,15,8,6,1,10])