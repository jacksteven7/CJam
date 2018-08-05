#!/bin/ruby

require 'json'
require 'stringio'

# Complete the minimumBribes function below.
def minimumBribes(q)
  cont = 0
  for i in (q.size-1).downto(2)
    #p " (#{i}) ==> #{q}"
    if !v(q,i)
      cont = "Too chaotic"
      break
    elsif q[i]-1 != i
      if q[i-1]-1 == i 
        aux = q[i]
        q[i] = q[i-1]
        q[i-1] = aux
      else
        aux = q[i]
        q[i] = q[i-2]
        q[i-2] = q[i-1]
        q[i-1] = aux
        cont += 1 
      end
      cont += 1 
    end
  end
  printf "%s\n", q[0] != 1 && cont != "Too chaotic" ? cont+1 : cont
end

def v(q,i)
  q[i-2..i].include? i+1
end

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    q = gets.rstrip.split(' ').map(&:to_i)

    minimumBribes q
end
