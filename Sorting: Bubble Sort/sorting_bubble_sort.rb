#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countSwaps function below.
def countSwaps(a)
  n = a.size
  swaps = 0
  for i in 0..n
    j = 0
    while j < n-1 do
      if (a[j] > a[j + 1])
        swap(a,j)
        swaps += 1
      end
      j += 1
    end
  end

  printf "Array is sorted in %d swaps.\n", swaps
  printf "First Element: %d\n", a.first
  printf "Last Element: %d \n", a.last
end

def swap(q, i)
  aux = q[i]
  q[i] = q[i+1]
  q[i+1] = aux
end

n = gets.to_i

a = gets.rstrip.split(' ').map(&:to_i)

countSwaps a
