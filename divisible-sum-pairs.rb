#!/bin/ruby

def divisibleSumPairs(n, k, ar)
    # Complete this function
    pairs = []
    ar.each_with_index do |el, i|
      ((i+1)...n).each do |j|
        pairs << [i,j] if ((el+ar[j]) % k == 0)
      end
    end
    pairs.length
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = divisibleSumPairs(n, k, ar)
puts result;
