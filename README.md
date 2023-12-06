# odin-stock-picker
an optimal stock picker written using ruby

stock_picker.rb takes an array of values, each one representing the price of a stock for the day.
each day proceeds sequentially, with the first day starting at index 0.
stock_picker returns a pair of index values, corresponding to the optimal buy and sell dates, respectively.

example input:  stock_picker([10,3,6,9,15,8,6,1,10])
example output: The best day to buy is on day 2, while the best day to sell is on day 5.
                The maximum profit is $12.
