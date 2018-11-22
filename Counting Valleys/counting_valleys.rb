#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)
  valleys = 0
  pre = 0
  ac = 0
  for i in 0..n
    pre = ac
    ac += val(s[i]) 
    valleys +=1 if pre == -1 && ac == 0
  end
  return valleys
end

def val(step)
  step == "U" ? 1 : -1
end


n = gets.to_i

s = gets.to_s.rstrip.split('')

result = countingValleys n, s

p result
