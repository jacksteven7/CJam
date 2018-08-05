#!/bin/ruby

require 'json'
require 'stringio'
require 'pry'

# Complete the arrayManipulation function below.
def arrayManipulation(arr)
  for i in 1..arr.size-1
      arr[i]=arr[i-1]+arr[i]
  end
  arr
end

nm = gets.rstrip.split

n = nm[0].to_i

m = nm[1].to_i

queries = Array.new(m)
arr = Array.new(n+1,0)
m.times do |i|
    queries[i] = gets.rstrip.split(' ').map(&:to_i)
    arr[queries[i][0]-1] = arr[queries[i][0]-1] +  queries[i][2]
    arr[queries[i][1]] = arr[queries[i][1]] - queries[i][2]
end

result = arrayManipulation arr

p result.sort.last
