def kangaroo(x1, v1, x2, v2)
    # Complete this function
    return 'YES' if x1 == x2
    if x1>x2
      x1, x2, v1, v2 = x2, x1, v2, v1
    end
    return 'NO' if v1 <= v2
    diff = x2 - x1
    until diff < 0
      return 'YES' if diff == 0
      x1 += v1
      x2 += v2
      diff = x2 - x1
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
 #0 2 5 3 NO
 # 0 3 4 2 YES
