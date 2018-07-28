#!/bin/ruby

filename = ARGV.first
file = File.open(filename)

L, D, N = file.readline.split(' ').map(&:to_i)

dic = Array.new

D.times do |i|
  dic.push file.readline 
end

output = File.open("answer.out","w")

N.times do |i|
  patt = file.readline
  patt = patt.gsub(/[(]/,"[").gsub(/[)]/,"]")
  
  regex = Regexp.new patt
  
  found = 0 
  dic.each do |word|
    found=found+1 if word =~ regex
  end
  output.write("Case ##{i+1}: #{found}\n")
end