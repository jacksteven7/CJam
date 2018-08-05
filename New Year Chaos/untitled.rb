2
5
2 1 5 3 4
5
2 5 1 3 4






#!/bin/ruby

require 'json'
require 'stringio'

# Complete the minimumBribes function below.
def minimumBribes(q)
  cont = 0
  for i in 0..q.size-2
    if v(q,i)
      cont = "Too chaotic"
      break
    else
    end
  end
  p "*****************. #{cont}"
end

def v(q,i)
  p "el #{q[i]} esta en la posicion #{i} y deberia estar en la #{q[i]-1}"
  p "el #{q[i+1]} esta en la posicion #{i+1} y deberia estar en la #{q[i+1]-1}"
  p "el #{q[i+2]} esta en la posicion #{i+2} y deberia estar en la #{q[i+2]-1}"
  
  (i - (q[i]-1)).abs > 2 || (i+1 - (q[i+1]-1)).abs > 2 || (i+2 - (q[i+2]-1)).abs > 2 
end

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    q = gets.rstrip.split(' ').map(&:to_i)

    minimumBribes q
end
