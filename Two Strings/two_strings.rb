#!/bin/ruby

require 'json'
require 'stringio'

# Complete the twoStrings function below.
def twoStrings(s1, s2)
  (s1 & s2).any? ? "YES" : "NO"
end


q = gets.to_i

q.times do |q_itr|
    s1 = gets.to_s.rstrip.split("")

    s2 = gets.to_s.rstrip.split("")

    result = twoStrings s1, s2

    p result
    
end