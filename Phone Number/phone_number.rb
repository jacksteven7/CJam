#!/bin/ruby
require 'json'
require 'stringio'
require 'pry'
def solution(s)
  s = s.gsub(" ","").gsub "-",""
  s = s.scan(/.{1,3}/)
  if s.size > 1 && s.last.size == 1
    s[s.size-1]=s[s.size-2][2]+s[s.size-1]
    s[s.size-2]=s[s.size-2][0..1]
  end
  printf "%s\n", s.join("-")
end

s = gets.rstrip

solution(s)


#. 0 - 22 1985--324