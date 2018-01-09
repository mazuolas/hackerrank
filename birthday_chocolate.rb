#!/bin/ruby

def solve(n, s, d, m)
    # Complete this function
    count = 0
    s.each_with_index do |el, i|
      next if ((i+m) > n )
      sum = s[i,m].sum
      count += 1 if sum == d
    end
    count
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
d, m = gets.strip.split(' ')
d = d.to_i
m = m.to_i
result = solve(n, s, d, m)
puts result;
