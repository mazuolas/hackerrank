def kangaroo(x1, v1, x2, v2)
    # Complete this function
    diff = (x1 - x2).abs
    last_diff = diff
    until last_diff > diff
      return 'YES' if diff == 0
      last_diff = diff
      x1 += v1
      x2 += v2
      diff = (x1 - x2).abs
    end
    return 'NO'
end

x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i
result = kangaroo(x1, v1, x2, v2)
puts result;
