#!/bin/ruby

require 'json'
require 'stringio'

# Complete the maximumToys function below.
def maximumToys(prices, k)
  prices.sort!
  quantity = 0
  prices.each do |product|
    k = k - product
    k >= 0 ? quantity += 1 : break
  end
  quantity
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

prices = gets.rstrip.split(' ').map(&:to_i)

result = maximumToys prices, k

p result

