#!/bin/ruby

def getRecord(s)
    # Complete this function
    high_record = s[0]
    low_record = s[0]
    high_count = 0
    low_count = 0
    s.each do |score|
      if score > high_record
        high_record = score
        high_count += 1
      end
      if score < low_record
        low_record = score
        low_count += 1
      end
    end
    [high_count, low_count]
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
result = getRecord(s)
print result.join(" ")
