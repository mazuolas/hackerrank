#!/bin/ruby

def fibonacciModified(t1, t2, n)
    # Complete this function
    seen = {}
    seen[1] = t1
    seen[2] = t2
    current = 3
    until seen[n]
      seen[current] = seen[current-2] + seen[current-1]**2
      current += 1
    end
    seen[n]
end

t1, t2, n = gets.strip.split(' ')
t1 = t1.to_i
t2 = t2.to_i
n = n.to_i
result = fibonacciModified(t1, t2, n)
puts result
