#!/bin/ruby

require 'json'
require 'stringio'
require 'pry'

# Complete the hourglassSum function below.
def optimalUtilization(deviceCapacity, foregroundAppList, backgroundAppList)
  min = 0
  solutions = Array.new
  foregroundAppList.each do |fore|
    backgroundAppList.each do |back|
      total = fore[1] + back[1]
      if total >= min && total <= deviceCapacity 
        solutions = Array.new if total > min 
        solutions << [fore[0],back[0]]
        min = total
      end 
    end 
  end
  p solutions
end

deviceCapacity = 20
foregroundAppList = [[1,8],[2,15],[3,9]]
backgroundAppList = [[1,8],[2,11],[3,12]]


optimalUtilization deviceCapacity, foregroundAppList, backgroundAppList


