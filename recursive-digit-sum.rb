#!/bin/ruby

def digitSum(n, k = 1)
    # Complete this function
    return n if n < 10
    sum = 0
    until n = 0
      sum += n % 10
      n = n/10
    end
    digitSum(sum*k)
end

n, k = gets.strip.split(' ')
k = k.to_i
result = digitSum(n, k)
puts result
