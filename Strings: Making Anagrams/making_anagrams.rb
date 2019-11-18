#!/bin/ruby

require 'json'
require 'stringio'

# Complete the makeAnagram function below.
def makeAnagram(a, b)
  char_to_delete = 0
  a.each do |letter|
    idx = b.index(letter)
    next if b.delete_at(idx) rescue nil
    char_to_delete +=1
  end
  char_to_delete + b.size
end

fptr = File.open("new.res", 'w')

a = gets.to_s.rstrip.split("")

b = gets.to_s.rstrip.split("")

res = makeAnagram a, b

fptr.write res
fptr.write "\n"

fptr.close()
p res

=begin
	
cde
abc
	
=end