#!/bin/ruby

arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

max = -100

arr.each_with_index do |row, i|
  row.each_with_index do |el, j|
    next if (i>3 || j>3)
    sum = 0
    sum += el + arr[i][j+1] + arr[i][j+2]
    sum += arr[i+1][j+1]
    sum += arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
    max = sum if sum > max
  end
end
print max
