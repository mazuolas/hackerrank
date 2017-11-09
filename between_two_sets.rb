#!/bin/ruby

def getTotalX(a, b)
    # Complete this function
    count = 0
    (a[-1]..b[0]).each do |i|
      valid = true
      a.each do |el|
        valid = false if i % el != 0
      end
      next unless valid
      b.each do |el|
        valid = false if el % i != 0
      end
      count += 1 if valid
    end
    count
end


n, m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
b = gets.strip
b = b.split(' ').map(&:to_i)
total = getTotalX(a, b)
puts total
