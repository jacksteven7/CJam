#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the minimumSwaps function below.
def minimumSwaps(arr)
 ord = arr.sort
 sol = 0
 swap = Hash.new
 arr.each_with_index do |num, i|
  val = val_in_map(arr[i],swap)
  if val != ord[i]
    swap[ord[i]]=val
    sol += 1
  end
 end
 sol
end

def val_in_map(val, map)
  map.key?(val) ? val_in_map(map[val],map) : val
end



n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

res = minimumSwaps arr

p res
