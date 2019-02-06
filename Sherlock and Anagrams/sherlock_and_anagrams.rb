#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sherlockAndAnagrams function below.
def sherlockAndAnagrams(s)
  anagrams = 0

  for i in 0..s.length
    for j in i+1..s.lengthdist/javascript-calculator.js
      word = s[i..j-1]
      inc = j - i - 1
      aux = j
      p "Comparar #{word} con: "
      while(aux<s.length)
        right = aux+inc
        #p "aux..right #{aux..right}"
        p s[aux..right]
        aux = right + 1
      end
    end
  end
  #a.sort == b.sort
end

q = gets.to_i

q.times do |q_itr|
    s = gets.to_s.rstrip

    result = sherlockAndAnagrams s

    p result
end
