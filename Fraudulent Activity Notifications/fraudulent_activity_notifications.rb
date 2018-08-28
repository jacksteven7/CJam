#!/bin/ruby

require 'json'
require 'stringio'
require 'pry'

# Complete the activityNotifications function below.
def activityNotifications(expenditure, d)
  alerts = 0
  total = 0
  sorted_exp = Array.new(201, 0)
  #p d
  #p sorted_exp
  for i in 0..d-1
    sorted_exp[expenditure[i]] += 1
  end
  #p sorted_exp
  for i in d..expenditure.size-1
    median = calc_median(sorted_exp,d)
    #p "Median #{median}"
    alerts += 1 if expenditure[i] >= 2*median
    sorted_exp[expenditure[i-d]] -= 1
    sorted_exp[expenditure[i]] += 1
  end
  #p sorted_exp
  alerts
end

def calc_median(sorted_exp, d)
  middle = d / 2
  idx = 0
  acc = sorted_exp[idx]
  while acc < middle
    idx += 1
    acc += sorted_exp[idx]
  end
  if acc == middle
    right = idx + 1
    while sorted_exp[right]==0
      right += 1
    end
    #p "idx #{idx} right #{right}"
    return d % 2 == 1 ? right : (idx + right) / 2.0
  else
    return idx
  end
end

fptr = File.open("input.in")

nd = fptr.readline.split

n = nd[0].to_i

d = nd[1].to_i

expenditure = fptr.readline.split(' ').map(&:to_i)

result = activityNotifications expenditure, d

p result

fptr.close()

