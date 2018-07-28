#!/bin/ruby

arr = Array.new(6)
for i in (0..5)
    line = gets.strip
    arr[i] = line.split(' ').map(&:to_i)
end
max = -63

n = gets.strip.to_i
arr = gets.strip

filename = ARGV.first
file = File.open(filename)
file.readline

L, D, N = gets.strip.split(' ').map(&:to_i)