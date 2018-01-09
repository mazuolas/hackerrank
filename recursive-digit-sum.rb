#!/bin/ruby

def digitSum(n, k = 1)
    # Complete this function
    return n if n.length == 1
    sum = n.split('').map(&:to_i).sum
    digitSum((sum*k).to_s)
end

n, k = gets.strip.split(' ')
k = k.to_i
result = digitSum(n, k)
puts result
