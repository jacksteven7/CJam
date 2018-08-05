#!/bin/ruby

require 'json'
require 'stringio'
require 'pry'

# Complete the hourglassSum function below.
def hourglassSum(arr)
  max = -100000000
  for i in 0..3
    for j in 0..3
      val = arr[i][j]+arr[i][j+1]+arr[i][j+2]
      val += arr[i+1][j+1]
      val += arr[i+2][j]+arr[i+2][j+1]+arr[i+2][j+2]
      max = [max, val].max
    end
  end
  max
end



arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = hourglassSum arr

p result
