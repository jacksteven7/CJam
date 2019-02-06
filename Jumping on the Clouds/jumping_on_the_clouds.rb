#!/bin/ruby

require 'json'
require 'stringio'

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c, n)
  steps = c[0] == 0 ? 0 : 1
  idx = steps
  while idx < n - 1
    idx += c[idx+2] == 1 ?  1 : 2
    steps += 1
  end
  steps
end

n = gets.to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c , n

p result